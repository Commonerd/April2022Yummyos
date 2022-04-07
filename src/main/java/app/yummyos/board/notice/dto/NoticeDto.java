package app.yummyos.board.notice.dto;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeDto {
	private int no;
	private String id;
	private String title;
	private String content;
	private Date regdate;
	private int readcount;
	
}

