package app.yummyos.board.mpick.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import app.yummyos.board.mpick.dto.MCommDto;
import app.yummyos.board.mpick.service.MCommService;


@Controller
public class MCommController {

	@Autowired
	MCommService service;

	@PostMapping("/mp_comm/insert")
	@ResponseBody
	public String insertComm(MCommDto dto) {
		int i = service.insertComm(dto);
		return i+"";
	}

	@DeleteMapping("/mp_comm/delete/{mp_cno}")
	@ResponseBody
	public String deleteComm(@PathVariable int mp_cno) {
		int i = service.deleteComm(mp_cno);
		return i+"";
	}
}