package app.yummyos.search.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.search.dto.StoreDto;

@Mapper
public interface SearchDao {
	
	List<StoreDto> searchList();
	StoreDto searchOne(String keyword);
	
	
	
}
