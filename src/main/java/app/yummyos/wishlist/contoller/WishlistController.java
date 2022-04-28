package app.yummyos.wishlist.contoller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import app.yummyos.board.notice.dto.NtCommDto;
import app.yummyos.users.dto.UsersDto;
import app.yummyos.wishlist.dto.WishlistDto;
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
	
	@PostMapping("/wishlist/add")
	@ResponseBody
	public String insertWishlist(WishlistDto dto) {
		int i = service.insertWishlist(dto);
		return i+"";
	}
	
	
	@RequestMapping("/wishlist")
	public String list(@RequestParam(name="p", defaultValue = "1") int page, Model m, @ModelAttribute("user") UsersDto dto) {

		//글이 있는지 체크
		int count = service.count(dto.getId());
		System.out.println("count :: "+count);
		if(count > 0 ) {
		int perPage = 9; // 한 페이지에 보일 글의 갯수
		int startRow = (page - 1) * perPage + 1;
		int endRow = page * perPage;
		
		List<WishlistDto> wishlistList = service.wishlistList(startRow, endRow, dto.getId());
		m.addAttribute("wList", wishlistList);
		System.out.println("(wishlistList.size()::"+wishlistList.size());
		int pageNum = 5;
		int totalPages = count / perPage + (count % perPage > 0 ? 1 : 0); //전체 페이지 수 
		
		int begin = (page - 1) / pageNum * pageNum + 1;
		int end = begin + pageNum -1;
		if(end > totalPages) {
			end = totalPages;
		}
		m.addAttribute("begin", begin);
		m.addAttribute("end", end);
		m.addAttribute("pageNum", pageNum);
		m.addAttribute("totalPages", totalPages);
		}
		m.addAttribute("count", count);
		return "wishlist/wishlist";
	}
	
	@DeleteMapping("/wishlist/delete")
	@ResponseBody
	public String delete(int no) {
		int i = service.deleteWishlist(no); 
		return ""+i;
	}
	
}