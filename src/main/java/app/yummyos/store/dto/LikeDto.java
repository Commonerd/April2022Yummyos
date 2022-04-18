package app.yummyos.store.dto;

import lombok.Data;

@Data
public class LikeDto {

	private String ltmid;
	private int ltbid;
	private int ltlike;
	private int count;//좋아요가 눌린 상태인가 아닌가.
}
