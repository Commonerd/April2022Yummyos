package app.yummyos.details.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@SessionAttributes("user")
public class DetailsController {

	@GetMapping("/details")
	public String View() {
		return "details/details";
	}
	
	@GetMapping("/details/ladder")
	public String details_ladder() {
		return "details/ladder";
	}
	
	@GetMapping("/details/adress")
	public String details_adress() {
		return "details/adress";
	}
	
	@GetMapping("/details/kinds")
	public String details_kinds() {
		return "details/kinds";
	}
	
	@GetMapping("/details/price")
	public String details_price() {
		return "details/price";
	}
	
	@GetMapping("/details/parking")
	public String details_parking() {
		return "details/parking";
	}
	
	@GetMapping("/details/s_time")
	public String details_s_time() {
		return "details/s_time";
	}
	
	@GetMapping("/details/r_time")
	public String details_r_time() {
		return "details/r_time";
	}
	
	@GetMapping("/details/website")
	public String details_website() {
		return "details/website";
	}
	
	@GetMapping("/details/menu")
	public String details_menu() {
		return "details/menu";
	}
	
	@GetMapping("/details/introduce")
	public String details_introduce() {
		return "details/introduce";
	}
	
	@GetMapping("/details/review")
	public String details_review() {
		return "details/review";
	}
	
	@GetMapping("/details/wishlist")
	public String details_wishlist() {
		return "details/wishlist";
	}
	
	@GetMapping("/details/choice")
	public String details_choice() {
		return "details/choice";
	}
	
	@GetMapping("/details/search")
	public String details_search() {
		return "details/search";
	}
	
	@GetMapping("/details/theme")
	public String details_theme() {
		return "details/theme";
	}
	
}