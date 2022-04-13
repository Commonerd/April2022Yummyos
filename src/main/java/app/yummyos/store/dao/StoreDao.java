package app.yummyos.store.dao;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.store.dto.StoreDto;

@Mapper
public interface StoreDao {

		int viewStore(StoreDto dto);
		/*int insertUsers(UsersDto dto);
		UsersDto login(UsersDto dto);
		int updateUsers(UsersDto dto);
		int deleteUsers(String id);*/
	}


