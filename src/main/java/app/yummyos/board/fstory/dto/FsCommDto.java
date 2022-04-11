package app.yummyos.board.fstory.dto;

import java.util.Date;

import lombok.Data;

@Data
public class FsCommDto {
	private int fs_cno;
	private String id;
	private String content;
	private Date regdate;
	private int no;
}
