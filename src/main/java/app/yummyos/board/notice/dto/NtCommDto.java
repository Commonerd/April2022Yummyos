package app.yummyos.board.notice.dto;

import java.util.Date;
import lombok.Data;

@Data
public class NtCommDto {
	private int cno;
	private String id;
	private String content;
	private Date regdate;
	private int no;
	
}

