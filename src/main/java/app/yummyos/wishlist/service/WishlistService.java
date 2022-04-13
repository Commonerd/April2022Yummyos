package app.yummyos.wishlist.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.board.notice.dao.NoticeDao;
import app.yummyos.board.notice.dto.NoticeDto;
import app.yummyos.wishlist.dao.WishlistDao;
import app.yummyos.wishlist.dto.WishlistDto;


@Service
public class WishlistService {
	@Autowired
	WishlistDao dao;
	
	public int count() {
		return dao.count();
	}
	
	public List<WishlistDto> wishlistList(int start, int end){
		
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("start", start);
		m.put("end", end);
		return dao.wishlistList(m);
	}
	
	public int insert(WishlistDto dto) {
		return dao.insert(dto);
	}
	
	public WishlistDto wishlistOne(int no) {
		return dao.wishlistOne(no);
	}

	public int deleteWishlist(int no) {
		return dao.deleteWishlist(no);
	}
	
}