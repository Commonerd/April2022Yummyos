package app.yummyos.store.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewDto {

	private int no;
	private String image;
	private String contents;
	private Date day;
	private int store_no;
	private String id;
	private String rating;
	private int re_no;
}
