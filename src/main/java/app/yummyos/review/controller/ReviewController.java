package app.yummyos.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import app.yummyos.review.dto.ReviewDto;
import app.yummyos.review.service.ReviewService;

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

