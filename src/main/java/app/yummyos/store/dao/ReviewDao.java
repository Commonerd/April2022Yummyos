package app.yummyos.store.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.store.dto.ReviewDto;

@Mapper
public interface ReviewDao {
	List<ReviewDto> selectReview(int store_no);
	int insertReview(ReviewDto dto);
	int deleteReview(int no);
}
