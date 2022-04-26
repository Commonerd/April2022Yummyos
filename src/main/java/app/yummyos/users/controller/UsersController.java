package app.yummyos.users.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

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

	/*
	 * @GetMapping("/") public String index() { return "/index"; }
	 */
	
	
	@GetMapping("/joinView")
	public String View() {
		return "users/joinView";
	}
	
	// 아이디 찾기 페이지 이동
		@RequestMapping(value="findId")
		public String findIdView() {
			return "users/findId";
		}
		
	    // 아이디 찾기 실행
		@RequestMapping(value="findId", method=RequestMethod.POST)
		public String findIdAction(UsersDto dto, Model m) {
//			System.out.println(dto.getBirth()+dto.getEmail());
			String id = service.findId(dto);
//			System.out.println("id :: "+id);
			if(id == null) { 
				m.addAttribute("check", 1);
			} else { 
				m.addAttribute("check", 0);
				m.addAttribute("id", id);
			}
			
			return "users/findId";
		}
		
	    // 비밀번호 찾기 페이지로 이동
		@RequestMapping(value="findPassword")
		public String findPasswordView() {
			return "users/findPassword";
		}
		
	    // 비밀번호 찾기 실행
		@RequestMapping(value="find_password", method=RequestMethod.POST)
		public String findPasswordAction(UsersDto dto, Model model) {
			String user = service.findPassword(dto);
			if(user == null) { 
				model.addAttribute("check", 1);
			} else { 
				model.addAttribute("check", 0);
				model.addAttribute("updateid", user);
			}
			
			return "users/updatePw";
		}
		
	    // 비밀번호 바꾸기 실행
		@RequestMapping(value="update_password", method=RequestMethod.POST)
		public String updatePasswordAction(@RequestParam(value="updateid", defaultValue="", required=false) String id,
											UsersDto dto) {
			dto.setId(id);
			System.out.println(dto);
			service.updatePassword(dto);
			System.out.println(dto);
			return "users/loginform";
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