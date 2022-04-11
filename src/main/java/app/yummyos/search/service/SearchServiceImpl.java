package app.yummyos.search.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import app.yummyos.search.dao.SearchDao;
import app.yummyos.search.dto.StoreDto;

public class SearchServiceImpl// implements SearchService 
{
	/*
	 * @Autowired SearchDao searchDao;
	 * 
	 * UsersDao usersDao;
	 * 
	 * 
	 * public List<StoreDto> userList(long id) { Users user = usersDao.findById(id);
	 * List<StoreDto> allList =
	 * searchDao.findAllByUserAndCategoryOrderBySdateDesc(user, "user");
	 * List<StoreDto> list = new ArrayList<>(); HashSet<String> set = new
	 * HashSet<>(); for (StoreDto s : allList) { if
	 * (set.contains(s.getSearchname())) continue; else {
	 * set.add(s.getSearchname()); list.add(s); } }
	 * 
	 * return list; }
	 * 
	 * public boolean addStore(long id, String searchname) { Users users =
	 * usersDao.findById(id); if (users != null) { StoreDto search = new
	 * StoreDto(users, searchname, "store"); searchDao.save(search); return true; }
	 * else return false; }
	 * 
	 * public List<StoreDto> storeList(long id) { User user = userDao.findById(id);
	 * List<StoreDto> allList =
	 * searchDao.findAllByUserAndCategoryOrderBySdateDesc(user, "store");
	 * List<StoreDto> list = new ArrayList<>(); HashSet<String> set = new
	 * HashSet<>(); for (StoreDto s : allList) { if
	 * (set.contains(s.getSearchname())) continue; else {
	 * set.add(s.getSearchname()); list.add(s); } } return list; }
	 * 
	 * public List<TagsResponse> tagSearch() {
	 * 
	 * List<Store> slist = storeDao.findAll(); List<TagsResponse> list = new
	 * ArrayList<>();
	 * 
	 * for (Store s : slist) { List<Hashtag> hlist = service.storeTags(s.getNum());
	 * if (hlist.size() != 0) { list.add(new TagsResponse(s, hlist)); } }
	 * 
	 * return list; }
	 * 
	 */}