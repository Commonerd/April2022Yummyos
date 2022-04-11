package app.yummyos.board.mpick.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.board.mpick.dao.MpickDao;
import app.yummyos.board.mpick.dto.MpickDto;


@Service
public class MpickService {
	@Autowired
	MpickDao dao;
	
	public int count() {
		return dao.count();
	}
	
	public List<MpickDto> mpickList(int start, int end){
		
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("start", start);
		m.put("end", end);
		return dao.mpickList(m);
	}
	
	public int insert(MpickDto dto) {
		return dao.insert(dto);
	}
	
	public MpickDto mpickOne(int no) {
		dao.addReadcount(no);
		return dao.mpickOne(no);
	}

	public int updatempick(MpickDto dto) {
		return dao.updateMpick(dto);
	}
	
	public int deletempick(int no) {
		return dao.deleteMpick(no);
	}
	
	public List<MpickDto> mpickListSearch(int searchn, String search, int start, int end){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("searchn", searchn);
		m.put("search", search);
		m.put("start", start);
		m.put("end", end);

		return dao.mpickListSearch(m);
	}

	public int countSearch(int searchn, String search) {
		System.out.println(searchn+search);
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("searchn", searchn);
		m.put("search", search);
		return dao.countSearch(m);
	}

	
}