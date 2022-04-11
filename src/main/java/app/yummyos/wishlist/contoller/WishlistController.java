package app.yummyos.wishlist.contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import app.yummyos.board.notice.dto.NoticeDto;
import app.yummyos.users.dto.UsersDto;
import app.yummyos.wishlist.service.WishlistService;

@Controller
@SessionAttributes("user")
public class WishlistController {
	
	@Autowired
	WishlistService service;
	
	@ModelAttribute("user")
	public UsersDto getDto() {
		return new UsersDto();
	}
	
	@GetMapping("/wishlists")
	public String View() {
		return "wishlist/wishlists";
	}
	
	@PostMapping("/board/notice/write")	
	public String write(NoticeDto dto) {
		service.insert(dto);
		return "redirect:/board/notice/list";//글목록
	}//
}