package app.yummyos.board.notice.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.board.notice.dao.NoticeDao;
import app.yummyos.board.notice.dto.NoticeDto;
import app.yummyos.store.dto.StoreDto;


@Service
public class NoticeService {
	@Autowired
	NoticeDao dao;
	
	public int count() {
		return dao.count();
	}
	
	public List<NoticeDto> noticeList(int start, int end){
		
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("start", start);
		m.put("end", end);
		return dao.noticeList(m);
	}
	
	public int insert(NoticeDto dto) {
		return dao.insert(dto);
	}
	
	public NoticeDto noticeOne(int no) {
		dao.addReadcount(no);
		return dao.noticeOne(no);
	}

	public int updateNotice(NoticeDto dto) {
		return dao.updateNotice(dto);
	}
	
	public int deleteNotice(int no) {
		return dao.deleteNotice(no);
	}
	
	public List<NoticeDto> noticeListSearch(int searchn, String search, int start, int end){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("searchn", searchn);
		m.put("search", search);
		m.put("start", start);
		m.put("end", end);

		return dao.noticeListSearch(m);
	}

	public int countSearch(int searchn, String search) {
		System.out.println(searchn+search);
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("searchn", searchn);
		m.put("search", search);
		return dao.countSearch(m);
	}

	
}