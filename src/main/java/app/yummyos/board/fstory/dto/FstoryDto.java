package app.yummyos.board.fstory.dto;

import java.util.Date;

import lombok.Data;

@Data
public class FstoryDto {

	private int no;
	private String id;
	private String image;
	private String title;
	private String content;
	private Date regdate;
	private int readcount;

}
