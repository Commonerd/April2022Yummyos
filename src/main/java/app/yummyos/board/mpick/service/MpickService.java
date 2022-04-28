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
	
	public int count(String kind) {
		return dao.count(kind);
	}
	
	public List<MpickDto> mpickList(int start, int end, String kind){
		
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("start", start);
		m.put("end", end);
		m.put("kind", kind);
		return dao.mpickList(m);
	}
	
	public int insert(MpickDto dto) {
		String title = dto.getTitle();
		
		if(title.indexOf("맛있는") >= 0) {
			dto.setImage("d.jpg");
		}else if(title.indexOf("수요미식회") >= 0) {
			dto.setImage("wed.jpg");
		}
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
	
	public List<MpickDto> AllSearchMpickList(String search, int startRow, int endRow) {
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("search", search);
		m.put("start", startRow);
		m.put("end", endRow);
		return dao.AllSearchMpickList(m);
	}

	

	
}