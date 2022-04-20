package app.yummyos.store.dao;

import org.apache.ibatis.annotations.Mapper;
import app.yummyos.store.dto.LikeDto;

@Mapper
public interface LikeDao {

	
	public int ltlikecount(LikeDto likedto);
	
	public int ltlikegetinfo(LikeDto likedto); 
	
	public void likeinsert(LikeDto likedto);
	
	public int likeupdate(LikeDto likedto);
	public int getAllltlike(int ltbid);
	

}
