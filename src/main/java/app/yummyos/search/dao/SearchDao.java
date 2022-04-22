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
	
	public static final StoreDao storeDao = null;
	
	public static final FstoryDao fstoryDao = null;
	
	public static final MpickDao mpickDao = null;

	List<SearchDto> searchList(Map<String,Object>m);

	

}
