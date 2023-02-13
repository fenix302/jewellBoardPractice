package work.notice;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;

	public List<Map<String, String>> retrieveBoardList(Criteria cri){
		return noticeDAO.retrieveBoardList(cri);
	}
	
	public List<Map<String, String>> getListWithPaging(Criteria cri) {
		return noticeDAO.getListWithPaging(cri);
	}

	public Map<String, String> retrieveBoard(Map<String, String> boardParam){
		return noticeDAO.retrieveBoard(boardParam);
	}

	public String retrieveMaxBoardNo(){
		return noticeDAO.retrieveMaxBoardNo();
	}

	public void createBoard(NoticeBean board){
		noticeDAO.createBoard(board);
	}

	public void updateBoard(NoticeBean board){
		noticeDAO.updateBoard(board);
	}

	public void updateBoardHits(Map<String, String> boardParam){
		noticeDAO.updateBoardHits(boardParam);
	}

	public void deleteBoard(Map<String, String> boardParam){
		noticeDAO.deleteBoard(boardParam);
	}

	public void deleteBoard2(Map<String, String> boardParam){
		noticeDAO.deleteBoard2(boardParam);
	}

	@Override
	public int getTotalCount() {
		return noticeDAO.getTotalCount();
	}

}
