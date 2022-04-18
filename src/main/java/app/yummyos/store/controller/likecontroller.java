package app.yummyos.store.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import app.yummyos.store.dto.LikeDto;
import app.yummyos.store.service.LikeService;

@Controller
public class likecontroller {
	
	@Autowired
	LikeService likeservice;
	@PostMapping("/likeupdate")
	public Map<String,String> likeupdate(@RequestBody LikeDto likedto){
	
		
		Map<String,String> map = new HashMap<String, String>();
		
		try {
			likeservice.likeupdate(likedto);
			map.put("result", "success");
			
		}catch(Exception e) {
			e.printStackTrace();
			map.put("result", "fail");
		}
		
		return map;
	}

}
