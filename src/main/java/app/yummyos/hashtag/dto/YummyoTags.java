package app.yummyos.hashtag.dto;

import org.springframework.beans.factory.annotation.Autowired;

import app.yummyos.board.fstory.dto.FstoryDto;
import app.yummyos.store.dto.ReviewDto;

public class YummyoTags {
	
	private int no;
	
	@Autowired
	private HashtagDto hashtagdto;
	
	@Autowired
	private FstoryDto fstorydto;

	@Autowired
	private ReviewDto reviewdto; 
    
	public YummyoTags() {}
	
	public void setHashtag(HashtagDto hashtagdto) {
		this.hashtagdto = hashtagdto;
	}

	public void setReview(ReviewDto reviewdto) {
		this.reviewdto = reviewdto;
	}
	
	public FstoryDto getFstorydto() {
		return fstorydto;
	}

	public void setFstorydto(FstoryDto fstorydto) {
		this.fstorydto = fstorydto;
	}

	public int getNo() {
		return no;
	}

	public HashtagDto getHashtag() {
		return hashtagdto;
	}

	public ReviewDto getReview() {
		return reviewdto;
	}

	@Override
	public String toString() {
		return "Storetags [no=" + no + ", hashtagdto=" + hashtagdto + ", reviewdto=" + reviewdto + "fstorydto=" + fstorydto + "]";
	}

}


