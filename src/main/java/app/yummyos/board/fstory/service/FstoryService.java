package app.yummyos.board.fstory.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.board.fstory.dao.FstoryDao;
import app.yummyos.board.fstory.dto.FstoryDto;

@Service
public class FstoryService {
	
	@Autowired
	FstoryDao dao;
	
	public int insert(FstoryDto dto) {
		return dao.insert(dto);	
	}
	
	public List<FstoryDto> fstoryList(int start, int end){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("start", start);
		m.put("end", end);
		
		return dao.fstoryList(m);	
	}

	public int count() {
		return dao.count();
	}
	
	public FstoryDto fstoryOne(int no) {
		return dao.fstoryOne(no);
	}
	
	public int updateFstory(FstoryDto dto) {
		return dao.updateFstory(dto);
	}
	
	public int deleteFstory(int no) {
		return dao.deleteFstory(no);
	}
	
	public List<FstoryDto> fstoryListSearch(int searchn, String search,int start, int end) {
		Map<String,Object> m = new HashMap<String,Object>();
		m.put("searchn", searchn);
		m.put("search", search);
		m.put("start", start);
		m.put("end", end);
		
		return dao.fstoryListSearch(m);
	}
	
	public int countSearch(int searchn, String search) {
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("searchn", searchn);
		m.put("search", search);
		
		return dao.countSearch(m);
	}

}
