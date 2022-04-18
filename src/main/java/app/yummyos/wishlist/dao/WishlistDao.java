package app.yummyos.wishlist.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.notice.dto.NoticeDto;
import app.yummyos.wishlist.dto.WishlistDto;



@Mapper
public interface WishlistDao {
	int insertWishlist(WishlistDto dto);
	List<WishlistDto> wishlistList(Map<String, Object> m);
	int count(String id);//전체글 갯수
	WishlistDto wishlistOne(int no);
	int deleteWishlist(int no);
	
}