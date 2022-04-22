package app.yummyos.users.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

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
	
	public String findId(UsersDto dto) {
		return dao.findId(dto);
	}

	public String findPassword(UsersDto dto) {
		return dao.findPassword(dto);
	}
	
	public void updatePassword(UsersDto dto) {
		dao.updatePassword(dto);
	}

}
	

