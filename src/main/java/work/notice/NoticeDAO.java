package work.notice;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Map<String, String>> retrieveBoardList(Map<String, String> boardParam){
		return sqlSession.selectList("notice.retrieveBoardList", boardParam);
	}

//	public List<NoticeBean> getListWithPaging(Criteria cri){
//		return sqlSession.selectList("notice.getListWithPaging", cri);
//	}
	
	public Map<String, String> retrieveBoard(Map<String, String> boardParam){
		return sqlSession.selectOne("notice.retrieveBoard", boardParam);
	}

	public String retrieveMaxBoardNo(){
		return sqlSession.selectOne("notice.retrieveMaxBoardNo");
	}

	public void createBoard(NoticeBean board){
		sqlSession.insert("notice.createBoard", board);
	}

	public void updateBoard(NoticeBean board){
		sqlSession.update("notice.updateBoard", board);
	}

	public void updateBoardHits(Map<String, String> boardParam){
		sqlSession.update("notice.updateBoardHits", boardParam);
	}

	public void deleteBoard(Map<String, String> boardParam){
		sqlSession.delete("notice.deleteBoard", boardParam);
	}

	public void deleteBoard2(Map<String, String> boardParam){
		sqlSession.delete("notice.deleteBoard2", boardParam);
	}

}
