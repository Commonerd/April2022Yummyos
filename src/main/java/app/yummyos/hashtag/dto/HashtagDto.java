package app.yummyos.hashtag.dto;

import lombok.Data;

@Data
public class HashtagDto {
	
	private int no;
	private String keyword;
	private String category;
	
	public int getNo() {
		return no;
	}
	
	public String getKeyword() {
		return keyword;
	}

	public String getCategory() {
		return category;
	}

	@Override
	public String toString() {
		return "Hashtag [no=" + no + ", keyword=" + keyword + ", category=" + category + "]";
	}


}


