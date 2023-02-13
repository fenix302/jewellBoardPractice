package work.notice;

import java.util.List;
import java.util.Map;


public interface NoticeService {
	public List<NoticeBean> retrieveBoardList(Criteria cri);

	public List<NoticeBean> getListWithPaging(Criteria cri);
	
	public Map<String, String> retrieveBoard(Map<String, String> boardParam);

	public String retrieveMaxBoardNo();

	public void createBoard(NoticeBean board);

	public void updateBoard(NoticeBean board);

	public void updateBoardHits(Map<String, String> boardParam);

	public void deleteBoard(Map<String, String> boardParam);
	public void deleteBoard2(Map<String, String> boardParam);
	
	public int getTotalCount();
}
