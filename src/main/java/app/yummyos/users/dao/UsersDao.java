package app.yummyos.users.dao;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.users.dto.UsersDto;



@Mapper
public interface UsersDao {

	String idCheck(String id);
	int insertUsers(UsersDto dto);
	UsersDto login(UsersDto dto);
	int updateUsers(UsersDto dto);
	int deleteUsers(String id);
}

