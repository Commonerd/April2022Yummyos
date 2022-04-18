package app.yummyos.hashtag.dto;

import lombok.Data;

@Data
public class Storetags {
	
	private long num;

	private HashtagDto hashtag;
	

	//private ReviewDto review;
    
	public Storetags() {}
	

	public void setHashtag(HashtagDto hashtag) {
		this.hashtag = hashtag;
	}



	//public void setReview(ReviewDto review) {
	//	this.review = review;
	//}



	public long getNum() {
		return num;
	}

	public HashtagDto getHashtag() {
		return hashtag;
	}

	/*
	 * public Review getReview() { return review; }
	 */


	@Override
	public String toString() {
		return "Storetags [num=" + num + ", hashtag=" + hashtag 
				//+ ", "	+ "review=" + review
				+ "]";
	}

}
