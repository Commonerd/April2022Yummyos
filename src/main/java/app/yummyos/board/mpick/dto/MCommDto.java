package app.yummyos.board.mpick.dto;

import java.util.Date;
import lombok.Data;

@Data
public class MCommDto {
	private int mp_cno;
	private String id;
	private String content;
	private Date regdate;
	private int mp_no;
}

