package app.yummyos.search.dao;

import java.util.List;

import app.yummyos.hashtag.dto.HashtagDto;

//import io.swagger.annotations.ApiModelProperty;


public class BasicResponse {

	public Object status;
	public String data;
	public List<TagsResponse> Object;
	/*
	 * @ApiModelProperty(value = "status", position = 1) public boolean status;
	 * 
	 * @ApiModelProperty(value = "data", position = 2) public String data;
	 * 
	 * @ApiModelProperty(value = "object", position = 3) public Object object;
	 */
	public Object HttpStatus;

	
}
