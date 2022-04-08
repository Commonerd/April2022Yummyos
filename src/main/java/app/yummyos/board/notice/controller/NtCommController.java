package app.yummyos.board.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import app.yummyos.board.notice.dto.NtCommDto;
import app.yummyos.board.notice.service.NtCommService;


@Controller
public class NtCommController {

	@Autowired
	NtCommService service;

	@PostMapping("/comm/insert")
	@ResponseBody
	public String insertNtComm(NtCommDto dto) {
		int i = service.insertNtComm(dto);
		return i+"";
	}

	@DeleteMapping("/comm/delete/{nt_cno}")
	@ResponseBody
	public String deleteNtComm(@PathVariable int cno) {
		int i = service.deleteNtComm(cno);
		return i+"";
	}
}