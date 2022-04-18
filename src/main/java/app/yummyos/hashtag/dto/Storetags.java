package app.yummyos.hashtag.dto;

import app.yummyos.store.dto.ReviewDto;
import lombok.Data;

@Data
public class Storetags {
	
	private long num;

	private HashtagDto hashtag;
	
	private ReviewDto reviewdto;

	public Storetags() {}
	
	public void setHashtag(HashtagDto hashtag) {
		this.hashtag = hashtag;
	}

	public void setReview(ReviewDto review) {
		this.reviewdto = review;
	}

	public long getNum() {
		return num;
	}

	public HashtagDto getHashtag() {
		return hashtag;
	}
	
	public ReviewDto getReviewddto() { 
		 return reviewdto; 
	 }
	 
	@Override
	public String toString() {
		return "Storetags [num=" + num + ", hashtag=" + hashtag + ", "	+ "review=" + reviewdto + "]";
	}

}
