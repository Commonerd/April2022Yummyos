package app.yummyos.search.dto;

import lombok.Data;
//type=3&query=big+data
@Data
public class SearchCommand {
	private String type;
	private String query;
	private int page;

	
}