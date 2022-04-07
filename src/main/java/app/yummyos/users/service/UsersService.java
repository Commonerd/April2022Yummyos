package app.yummyos.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.users.dao.UsersDao;
import app.yummyos.users.dto.UsersDto;



@Service
public class UsersService {
	@Autowired
	UsersDao dao;
	
	public String idCheck(String id) {
		return dao.idCheck(id);
	}
	public int insertUsers(UsersDto dto) {
		return dao.insertUsers(dto);
	}
	public UsersDto login(UsersDto dto) {
		return dao.login(dto);
	}
	public int updateUsers(UsersDto dto) {
		return dao.updateUsers(dto);
	}
	public int deleteUsers(String formpw, UsersDto dto ) {
		String pw = dto.getPassword();
		if(pw.equals(formpw)) {
			return dao.deleteUsers(dto.getId());
		}else {
			return 0;
		}
	}
	
	
	
}
	

