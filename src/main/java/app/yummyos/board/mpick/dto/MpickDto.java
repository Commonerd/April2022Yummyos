package app.yummyos.board.mpick.dto;


import java.util.Date;

import lombok.Data;

@Data
public class MpickDto {
	private int no;
	private String id;
	private String image;
	private String title;	
	private String content;
	private Date regdate;
	private int readcount;
	
}
