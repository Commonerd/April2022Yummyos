package app.yummyos.hashtag.dto;

import org.springframework.beans.factory.annotation.Autowired;

public class YummyoTags {
	
	private int no;
	
	@Autowired
	private HashtagDto hashtagdto;
	

	//private Review review;
    
	public YummyoTags() {}
	

	public void setHashtag(HashtagDto hashtagdto) {
		this.hashtagdto = hashtagdto;
	}



	/*public void setReview(Review review) {
		this.review = review;
	}
*/


	public int getNo() {
		return no;
	}

	public HashtagDto getHashtag() {
		return hashtagdto;
	}

	/*public Review getReview() {
		return review;
	}*/


	@Override
	public String toString() {
		return "Storetags [no=" + no + ", hashtagdto=" + hashtagdto +
				//", review=" + review +
				"]";
	}

}


