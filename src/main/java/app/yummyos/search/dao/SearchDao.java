package app.yummyos.search.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.fstory.dao.FstoryDao;
import app.yummyos.board.mpick.dao.MpickDao;
import app.yummyos.search.dto.SearchDto;
import app.yummyos.store.dao.StoreDao;

@Mapper
public interface SearchDao {

	List<SearchDto> searchList(Map<String,Object>m);

	int countSearch(String search);

	

	

}
