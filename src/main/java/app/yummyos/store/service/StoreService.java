package app.yummyos.store.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.store.dao.StoreDao;
import app.yummyos.store.dto.StoreDto;

@Service
public class StoreService {

		@Autowired
		StoreDao dao;
		
		public int count() {
			return dao.countStore();
		}
		
		public int insertStore(StoreDto dto) {
			return dao.insertStore(dto);
		}
		
		public StoreDto storeOne(int no) {
			dao.addViewcount(no);
			System.out.println("실행");
			return dao.storeOne(no);
		}
		public int updateStore(StoreDto dto) {
			return dao.updateStore(dto);
		}
		public int deleteStore(int no) {
			return dao.deleteStore(no);
		}
		
		public List<StoreDto> storeList(int start, int end){
			Map<String,Object> m = new HashMap<String, Object>();
			m.put("start", start);
			m.put("end", end);
			
			return dao.storeList(m);	
		}
		
		public List<StoreDto> storeListSearch(int searchn, String search, int start, int end){
			Map<String,Object> m = new HashMap<String, Object>();
			m.put("searchn", searchn);
			m.put("search", search);
			m.put("start", start);
			m.put("end", end);

			return dao.storeListSearch(m);
		}
		
		public int countSearch(int searchn, String search) {
			System.out.println(searchn+search);
			Map<String,Object> m = new HashMap<String, Object>();
			m.put("searchn", searchn);
			m.put("search", search);
			return dao.countSearch(m);
		}

		public List<StoreDto> getstorelist(int start, int end){
			Map<String,Object> m = new HashMap<String, Object>();
			m.put("start", start);
			m.put("end", end);
			
			return dao.getstorelist(m);	
		}

		public List<StoreDto> AllSearchStoreList(String search, int startRow, int endRow) {
			Map<String,Object> m = new HashMap<String, Object>();
			m.put("search", search);
			m.put("start", startRow);
			m.put("end", endRow);
			return dao.AllSearchStoreList(m);
		}

	
		
		

		
}
