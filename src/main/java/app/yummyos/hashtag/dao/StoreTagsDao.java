package app.yummyos.hashtag.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.hashtag.dto.HashtagDto;
import app.yummyos.hashtag.dto.Storetags;

@Mapper
public interface StoreTagsDao {

	List<Storetags> findAllByHashtag(HashtagDto hashtag);

	

}
