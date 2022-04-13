package app.yummyos.review.dto;

import java.sql.Date;

import lombok.Data;


@Data
public class ReviewDto {
	private int no;	
	private String image;
	private String content;
	private Date day;
	private int store_no;
	private int readcount;
	private String id;
	private int rating;	
}