//package work.generalboard;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import lombok.AllArgsConstructor;
//import lombok.extern.log4j.Log4j;
//
//@Controller
//@Log4j
//@RequestMapping("/general/*")
//@AllArgsConstructor
//public class GeneralBoardController {
//	private GeneralBoardService service;
//	
//	@RequestMapping(value = "/list", method = RequestMethod.GET)
//	public void list(Model model) {
//		model.addAttribute("list", service.getList());
//	}
//
//	@RequestMapping(value = "/register", method = RequestMethod.POST)
//	public String register(GeneralBoardVO board, RedirectAttributes rttr) {
//		service.register(board);
//		rttr.addFlashAttribute("result", board.getBno());
//	}
//}
