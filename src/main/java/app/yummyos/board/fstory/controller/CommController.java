package app.yummyos.board.fstory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import app.yummyos.board.fstory.dto.CommDto;
import app.yummyos.board.fstory.service.CommService;

@Controller
public class CommController {
	
	@Autowired
	CommService service;
	
	@PostMapping("/comm/insert")
	@ResponseBody
	public String insertComm(CommDto dto) {
		int i = service.insertComm(dto);
		return i+"";
	}
	
	@DeleteMapping("/comm/delete/{cno}")
	@ResponseBody
	public String deleteComm(@PathVariable int cno) {
		int i = service.deleteComm(cno);
		return i+"";
	}
}
	
