package app.yummyos.search.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.board.fstory.dao.FstoryDao;
import app.yummyos.board.fstory.dto.FstoryDto;
import app.yummyos.board.fstory.service.FstoryService;
import app.yummyos.board.mpick.dao.MpickDao;
import app.yummyos.board.mpick.service.MpickService;
import app.yummyos.search.dao.SearchDao;
import app.yummyos.search.dto.SearchDto;
import app.yummyos.store.dao.StoreDao;
import app.yummyos.store.service.StoreService;



@Service
public class SearchService {
	@Autowired
	SearchDao searchDao;

	@Autowired 
	StoreDao storeDao;

	@Autowired 
	FstoryDao fstoyDao;
	 
	@Autowired
	MpickDao mpickDao;
	
	StoreService storeService;
	
	FstoryService fstoryService;
	
	MpickService mpickService;
	
	public List<SearchDto> searchList(String search) {
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("search", search);

		return searchDao.searchList(m);
	
	}




	

}
