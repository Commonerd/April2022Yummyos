package app.yummyos.board.fstory.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.fstory.dto.FstoryDto;


@Mapper
public interface FstoryDao {

	int insert(FstoryDto dto);
	
	List<FstoryDto> fstoryList(Map<String,Object> m);
	int count(); //전체 글 갯수
	FstoryDto fstoryOne(int no);
	int updateFstory(FstoryDto dto);
	int deleteFstory(int no);
	
	List<FstoryDto> fstoryListSearch(Map<String,Object>m);
	int countSearch(Map<String,Object> m);//전체 검색 글 수
	
	int addReadcount(int no);

}
