package app.yummyos.board.fstory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;  
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import app.yummyos.board.fstory.dto.FsCommDto;
import app.yummyos.board.fstory.service.FsCommService;

@Controller
public class FsCommController {
	
	@Autowired
	FsCommService fsc_service;
	
	@PostMapping("/fs_comm/insert")
	@ResponseBody
	public String insertComm(FsCommDto dto) {
		int i = fsc_service.insertComm(dto);
		return i+"";
	}
	
	@DeleteMapping("/fs_comm/delete/{fs_cno}")
	@ResponseBody
	public String deleteComm(@PathVariable int fs_cno) {
		int i = fsc_service.deleteComm(fs_cno);
		return i+"";
	}
}

