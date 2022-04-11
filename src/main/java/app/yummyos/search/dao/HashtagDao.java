package app.yummyos.search.dao;

import app.yummyos.search.dto.HashtagDto;

public interface HashtagDao {
	HashtagDto findByNum(long num);
	HashtagDto findByKeyword (String keyword);
}
