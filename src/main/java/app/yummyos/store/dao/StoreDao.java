package app.yummyos.store.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.notice.dto.NoticeDto;
import app.yummyos.store.dto.StoreDto;

@Mapper
public interface StoreDao {
		int viewStore(StoreDto dto);
		List<StoreDto> storeList(Map<String, Object> m);
		int count();//전체글 갯수
		StoreDto StoreOne(int no);
		int updateStore(Store dto);
		/*int insertUsers(UsersDto dto);
		UsersDto login(UsersDto dto);
		int updateUsers(UsersDto dto);
		int deleteUsers(String id);*/
	}


