package app.yummyos.search.dto;

import app.yummyos.board.fstory.dto.FstoryDto;
import app.yummyos.board.mpick.dto.MpickDto;
import app.yummyos.store.dto.StoreDto;
import lombok.Data;

@Data
public class SearchDto {

	StoreDto storeDto;
	
	FstoryDto fstoryDto;
	
	MpickDto mpickDto;


}
