package app.yummyos.search.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.store.dto.StoreDto;

@Mapper
public interface SearchDao {
	List<StoreDto> boardList(Map<String, Object> m);
	List<StoreDto> boardListSearch(Map<String, Object> m);
	int countSearch(Map<String, Object> m);// 전체 검색 글 수
	
	/*
	List<SearchDto> findAllByStoreAndCategory(StoreDto store, String category);
	SearchDto findByStoreAndSearchname(StoreDto store, String searchname);

	int countSearch(Map<String, Object> m);
	List<StoreDto> findAll();
	*/

	

}
