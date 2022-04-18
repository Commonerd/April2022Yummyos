package app.yummyos.hashtag.dao;

import java.util.Collection;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.hashtag.dto.HashtagDto;
import app.yummyos.hashtag.dto.YummyoTags;
@Mapper

public interface YummyoTagsDao {
	
	 List<YummyoTags> findAllByHashtag(HashtagDto hashtagdto);
	 
	 Collection<? extends HashtagDto> fstorytags(int no);
	 

}
