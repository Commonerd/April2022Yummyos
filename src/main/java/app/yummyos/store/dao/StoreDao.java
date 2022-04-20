package app.yummyos.store.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.store.dto.StoreDto;

@Mapper
public interface StoreDao {
		int insertStore(StoreDto dto);
		List<StoreDto> storeList(Map<String, Object> m);
		int countStore();//전체글 갯수
		StoreDto storeOne(int no);
		int updateStore(StoreDto dto);
		int deleteStore(int no);
		List<StoreDto> storeListSearch(Map<String, Object> m);
		int countSearch(Map<String, Object> m); //검색 글 갯수
		int addViewcount(int no);
		
		List<StoreDto> hasgtag(Map<String, Object> m);
		
	}


