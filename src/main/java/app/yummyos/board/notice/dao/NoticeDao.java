package app.yummyos.board.notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.notice.dto.NoticeDto;



@Mapper
public interface NoticeDao {
	int insert(NoticeDto dto);
	List<NoticeDto> noticeList(Map<String, Object> m);
	int count();//전체글 갯수
	NoticeDto noticeOne(int no);
	int updateNotice(NoticeDto dto);
	int deleteNotice(int no);
	List<NoticeDto> noticeListSearch(Map<String, Object> m);
	int countSearch(Map<String, Object> m); //검색 글 갯수
	int addReadcount(int no);
	
}