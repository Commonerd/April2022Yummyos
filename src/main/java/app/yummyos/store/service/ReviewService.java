package app.yummyos.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.store.dao.ReviewDao;
import app.yummyos.store.dto.ReviewDto;

@Service
public class ReviewService {
   @Autowired
   ReviewDao dao;
   
   public List<ReviewDto> selectReview(int store_no){
      return dao.selectReview(store_no);
   }
   public int insertReview(ReviewDto dto) {
      return dao.insertReview(dto);
   }
   public int deleteReview(int no) {
      return dao.deleteReview(no);
   }
   
}