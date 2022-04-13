package app.yummyos.review.controller;

import org.springframework.beans.factory.annotation.Autowired;

import app.yummyos.review.service.ReviewService;

public class ReviewController {
	@Autowired
	ReviewService service;
	
	@Autowired
	ReviewService r_service;

	}

