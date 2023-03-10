package work.notice;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import work.user.UserService;

@Controller
public class NoticeController {
	@Resource(name = "noticeService")
	private NoticeService noticeService;

	@Resource(name = "userService")
	private UserService userService;


	@RequestMapping(value="/work/notice/createBoard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView createBoard(@ModelAttribute NoticeBean board, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		
//		String writer = (String)session.getAttribute("writer");

		ModelAndView mv = new ModelAndView();

		String flag = board.getTitle(); //BoardBean 존재여부

		if(flag == null){
			mv.setViewName("/notice/boardRegisterC");
		}else if(flag != null){
			//게시글 생성
//			board.setWriter(writer);
			noticeService.createBoard(board);

			String maxBoardNo = noticeService.retrieveMaxBoardNo();

			mv.setViewName("redirect:/work/notice/retrieveBoardList.do?maxBoardNo=" + maxBoardNo);
		}

		return mv;
		
	}
	
	
	@RequestMapping(value="/work/notice/goMain.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String goMain(){
//		ModelAndView mv = new ModelAndView();
//
//		mv.setViewName("/intro/index");

		return "redirect:/intro/index.jsp";
	}

	@RequestMapping(value="/work/notice/retrieveBoard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoard(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		String boardNo = request.getParameter("bno");

//		if(boardNo == null) boardNo = request.getParameter("boardNo");

		Map<String, String> boardParam = new HashMap<String, String>();

		boardParam.put("BNO", boardNo);

		Map<String, String> dsBoard = noticeService.retrieveBoard(boardParam);


		mv.addObject("dsBoard", dsBoard);

		mv.setViewName("/notice/boardR");

		return mv;
	}

	@RequestMapping(value="/work/notice/retrieveBoardList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView retrieveBoardList(HttpServletRequest request, Model model, Criteria cri){
		ModelAndView mv = new ModelAndView();
		
		model.addAttribute("dsBoardList", noticeService.getListWithPaging(cri));
		
		int total = noticeService.getTotalCount();
		
		PageDTO pageMaker = new PageDTO(cri, total);
		
		model.addAttribute("pageMaker", pageMaker);
		
//		Map<String, String> boardParam = new HashMap<String, String>();

//		List<NoticeBean> dsBoardList = noticeService.retrieveBoardList(cri);

//		mv.addObject("dsBoardList", dsBoardList);
		mv.setViewName("/notice/boardListR");

		return mv;
	}

	@RequestMapping(value="/work/notice/deleteBoard.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView deleteBoard(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> boardParam = new HashMap<String, String>();
//		Map<String, String> replyParam = new HashMap<String, String>();
//		Map<String, String> markParam = new HashMap<String, String>();

		HttpSession session = request.getSession();

//		String userCode = (String)session.getAttribute("userCode");
		String boardNo = request.getParameter("bno");

//		boardParam.put("userCode", userCode);
		boardParam.put("BNO", boardNo);

//		replyParam.put("BNO", boardNo);

//		markParam.put("BNO", boardNo);

		//글 삭제
		noticeService.deleteBoard(boardParam);

		mv.setViewName("redirect:/work/notice/retrieveBoardList.do");

		return mv;
	}

	@RequestMapping(value="/work/notice/updateBoard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView updateBoard1(HttpServletRequest request, @ModelAttribute NoticeBean board, Criteria cri, Model model){
		Map<String, String> boardParam = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();
        String boardNo = request.getParameter("bno"); //없으면 GET(create안함), 있으면 POST(create)

        String flag = board.getTitle();
        boardParam.put("BNO", boardNo);

        Map<String, String> dsBoard = noticeService.retrieveBoard(boardParam);

		if(flag == null){
			mv.addObject("dsBoard", dsBoard);
//			model.addAttribute("pageNum", cri.getPageNum());
//			model.addAttribute("amount", cri.getAmount());
//			model.addAttribute("type", cri.getType());
//			model.addAttribute("keyword", cri.getKeyword());
			mv.setViewName("/notice/boardRegisterU");
		}else{
			noticeService.updateBoard(board);
//			model.addAttribute("pageNum", cri.getPageNum());
//			model.addAttribute("amount", cri.getAmount());
//			model.addAttribute("type", cri.getType());
//			model.addAttribute("keyword", cri.getKeyword());
			mv.setViewName("redirect:/work/notice/retrieveBoard.do?bno=" + boardNo);
		}
		return mv;
	}

}
