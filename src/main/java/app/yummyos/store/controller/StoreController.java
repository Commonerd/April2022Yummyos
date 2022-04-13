package app.yummyos.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import app.yummyos.store.dto.StoreDto;
import app.yummyos.store.service.StoreService;
import app.yummyos.users.dto.UsersDto;


@SessionAttributes("user")
@Controller
public class StoreController {

		@Autowired
		StoreService service;
		
		@ModelAttribute("user")
		public UsersDto getDto() {
			return new UsersDto();
		}
		
		@GetMapping("/storedetail")
		public String viewStore() {
			return "store/storedetail";
		}
}
