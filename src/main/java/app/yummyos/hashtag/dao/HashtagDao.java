package app.yummyos.hashtag.dao;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.hashtag.dto.HashtagDto;

@Mapper
public interface HashtagDao {
	HashtagDto findByNo(int no);
	HashtagDto findByKewword(String keyword);
	
	
	

}
