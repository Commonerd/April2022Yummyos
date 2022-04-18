package app.yummyos.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import app.yummyos.store.dto.ReviewDto;
import app.yummyos.store.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService service;
	
	@PostMapping("/review/insert")
	@ResponseBody
	public String insertReview(ReviewDto dto) {
		int i = service.insertReview(dto);
		return i+"";
	}
	
	@DeleteMapping("/review/delete/{no}")
	@ResponseBody
	public String deleteReview(@PathVariable int no) {
		int i = service.deleteReview(no);
		return i+"";
	}
}
