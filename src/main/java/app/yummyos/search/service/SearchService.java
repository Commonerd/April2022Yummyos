package app.yummyos.search.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.store.dao.StoreDao;
import app.yummyos.store.dto.StoreDto;

@Service
public class SearchService {
	
	@Autowired
	StoreDao dao;
	
	
	public List<StoreDto> boardList(int start, int end){
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("start", start);
		m.put("end", end);
		
		return dao.storeList(m);
	}
	
	public List<StoreDto> boardListSearch(int searchn, String search,int start, int end){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("searchn",searchn);
		m.put("search", search);
		m.put("start", start);
		m.put("end", end);
		
		return dao.storeListSearch(m);
	}
	public int countSearch(int searchn, String search) {
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("searchn",searchn);
		m.put("search", search);
		return dao.countSearch(m);
	}
	
	
	
	
	/*
	public boolean addStore(int no, String name); 
	public List<TagsResponse> tagSearch();
	List<SearchDto> storeList(int no);
	public int countSearch(String searchn);
	*/
}
