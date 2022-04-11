package app.yummyos.users.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.util.UrlPathHelper;

import com.fasterxml.jackson.databind.JsonNode;

import app.yummyos.users.dto.UsersDto;
import app.yummyos.users.service.UsersService;

@Controller
@SessionAttributes("user")
public class UsersController {
	@Autowired
	UsersService service;

	@ModelAttribute("user")
	public UsersDto getDto() {
		return new UsersDto();
	}

	@GetMapping("/joinView")
	public String View() {
		return "users/joinView";
	}

	@GetMapping("/insert")
	public String joinform() {
		return "users/joinform";
	}

	@GetMapping("/idCheck")
	@ResponseBody
	public String idCheck(String id) {
		String checkid = service.idCheck(id);
		return checkid;
	}

	@PostMapping("/insert")
	public String insert(UsersDto dto) {
		service.insertUsers(dto);
		return "redirect:loginform";
	}

	@GetMapping("/loginform")
	public String loginform() {
		return "users/loginform";
	}

	@RequestMapping("/login")   
	public String login(@ModelAttribute("command") @Valid UsersDto dto, BindingResult error, Model m) {

		UsersDto resultDto = service.login(dto);
		if (resultDto == null) {
			error.reject("nocode", "로그인 실패: 아이디나 비밀번호가 틀림");
			return "users/loginform";
		} else {// 로그인 성공
			m.addAttribute("user", resultDto);
		}
		return "redirect:/main";
	}

	@GetMapping("/logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}

	@GetMapping("/update")
	public String updateform(@ModelAttribute("user") UsersDto dto) {
		return "users/updateform";
	}

	@PutMapping("/update")
	public String update(@ModelAttribute("user") UsersDto dto) {
		service.updateUsers(dto);
		return "redirect:/main";
	}

	@GetMapping("/delete")
	public String deleteform() {
		return "users/deleteform";
	}

	@GetMapping("/delete/wrongpw")
	public String deleteformError(Model m) {
		m.addAttribute("error", "비밀번호 틀림");
		return "users/deleteform";
	}

	@DeleteMapping("/delete")
	public String delete(String formpw, @ModelAttribute("user") UsersDto dto, SessionStatus status) {

		int i = service.deleteUsers(formpw, dto);
		if (i == 0) {
			return "redirect:/delete/wrongpw";
		} else {
			status.setComplete();
			return "redirect:/main";
		}
	}

	@RequestMapping("/main")
	public String main(@ModelAttribute("user") UsersDto dto) {
		if (dto.getId() != null) {
			return "users/main";
		} else {
			return "users/loginform";
		}
	}
	
	 
	    
	 

}