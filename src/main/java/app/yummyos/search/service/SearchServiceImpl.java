package app.yummyos.search.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import javax.mail.Store;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.search.dao.TagsResponse;
import app.yummyos.hashtag.dto.HashtagDto;
import app.yummyos.search.dao.SearchDao;
import app.yummyos.search.dto.SearchDto;
import app.yummyos.store.dao.StoreDao;
import app.yummyos.store.dto.StoreDto;
import app.yummyos.store.service.StoreService;

@Service
public class SearchServiceImpl /*implements SearchService*/
{

	/*
	 * @Autowired SearchDao searchDao;
	 * 
	 * @Autowired StoreDao storeDao;
	 * 
	 * @Autowired StoreService service;
	 * 
	 * @Override public List<SearchDto> storeList(int no) { StoreDto store =
	 * storeDao.findByNo(no); List<SearchDto> allList =
	 * searchDao.findAllByStoreAndCategory(store, "store"); List<SearchDto> list =
	 * new ArrayList<>(); HashSet<String> set = new HashSet<>(); for (SearchDto s :
	 * allList) { if (set.contains(s.getSearchname())) continue; else {
	 * set.add(s.getSearchname()); list.add(s); } }
	 * 
	 * return list; }
	 * 
	 * @Override public int countSearch(String searchn) { Map<String,Object> m = new
	 * HashMap<String, Object>(); m.put("searchn",searchn); return
	 * searchDao.countSearch(m); }
	 * 
	 * 
	 * public boolean addStore(int no, String searchname) { StoreDto store =
	 * storeDao.findByNo(no); if (store != null) { SearchDto searchdto = new
	 * SearchDto(); // searchDao.save(searchdto); return true; } else return false;
	 * }
	 * 
	 * public List<TagsResponse> tagSearch() {
	 * 
	 * List<StoreDto> slist = ((SearchDao) storeDao).findAll(); List<TagsResponse>
	 * list = new ArrayList<>();
	 * 
	 * 
	 * for (StoreDto s : slist) { // List<HashtagDto> hlist
	 * =service.storeTags(s.getNo()); // if (hlist.size() != 0) { list.add(new //
	 * TagsResponse()); // } } return list; }
	 */

}
