package app.yummyos.board.mpick.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.mpick.dto.MpickDto;

@Mapper
public interface MpickDao {
	int insert(MpickDto dto);
	List<MpickDto> mpickList(Map<String, Object> m);
	int count(String kind);//전체글 갯수
	MpickDto mpickOne(int no);
	int updateMpick(MpickDto dto);
	int deleteMpick(int no);
	List<MpickDto> mpickListSearch(Map<String, Object> m);
	int countSearch(Map<String, Object> m); //전체 글 갯수
	
	int addReadcount(int no);
	
	List<MpickDto> AllSearchMpickList(Map<String, Object> m);
	
}