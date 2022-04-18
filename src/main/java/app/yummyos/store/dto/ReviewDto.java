package app.yummyos.store.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewDto {

	private int no;
	private String content;
	private Date day;
	private int store_no;
	private String id;
}
