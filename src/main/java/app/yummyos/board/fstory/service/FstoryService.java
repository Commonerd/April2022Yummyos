package app.yummyos.board.fstory.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.board.fstory.dao.FstoryDao;
import app.yummyos.board.fstory.dto.FstoryDto;
import app.yummyos.users.dto.UsersDto;

@Service
public class FstoryService {

	@Autowired
	FstoryDao dao;

	public int count(String kind) {
		return dao.count(kind);
	}

	
	public List<FstoryDto> fstoryList(int start, int end, String kind){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("start", start);
		m.put("end", end);
		m.put("kind", kind);
		return dao.fstoryList(m);	
	}

	
	public int insert(FstoryDto dto) {
		return dao.insert(dto);	
	}
	
	public FstoryDto fstoryOne(int no) {
		dao.addReadcount(no);
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
		System.out.println(searchn+search);
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("searchn", searchn);
		m.put("search", search);
		
		return dao.countSearch(m);
	}



	public List<FstoryDto> AllSearchFstoryList(String search, int startRow, int endRow) {
        Map<String,Object> m = new HashMap<String, Object>();
        m.put("search", search);
        m.put("start", startRow);
        m.put("end", endRow);
		
		return dao.AllSearchFstoryList(m);
	}





}
