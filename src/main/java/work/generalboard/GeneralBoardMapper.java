//package work.generalboard;
//
//import java.util.List;
//
//import org.apache.ibatis.annotations.Select;
//
//public interface GeneralBoardMapper {
//	@Select("select * from tbl_jw_general where bno > 0")
//	public List<GeneralBoardVO> getList();
//	
//	public void insert(GeneralBoardVO board);
//	
//	public void insertSelectKey(GeneralBoardVO board);
//	
//	public GeneralBoardVO read(Long bno);
//	
//	public int delete(Long bno);
//	
//	public int update(GeneralBoardVO board);
//}
