package app.yummyos.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import app.yummyos.review.dao.ReviewDao;
import app.yummyos.review.dto.ReviewDto;



@Service
public interface ReviewService {

	int deleteReview(int no);

	int insertReview(ReviewDto dto);




}
	
	
	
