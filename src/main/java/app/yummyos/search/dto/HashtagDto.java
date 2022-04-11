package app.yummyos.search.dto;

import lombok.Data;

@Data
public class HashtagDto {


	private long num;
	
	private String keyword;
	
	private String category;
	
	
	public long getNum() {
		return num;
	}
	
	public String getKeyword() {
		return keyword;
	}

	public String getCategory() {
		return category;
	}

	@Override
	public String toString() {
		return "Hashtag [num=" + num + ", keyword=" + keyword + ", category=" + category + "]";
	}

}
