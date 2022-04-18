package app.yummyos.hashtag.dao;

import java.util.List;

import app.yummyos.board.fstory.dao.FstoryDao;
import app.yummyos.hashtag.dto.HashtagDto;
//import app.yummyos.store.dao.StoreDao;

public class TagsResponse {
	//private StoreDao store;
	private List<HashtagDto> tags;
	private FstoryDao fstory;
	
	public FstoryDao getFstory() {
		return fstory;
	}

	public void setFstory(FstoryDao fstory) {
		this.fstory = fstory;
	}

	public TagsResponse() {}

	
	 public TagsResponse(/*StoreDao store,*/FstoryDao fstory, List<HashtagDto> tags){
		 //this.store =store;
		 this.fstory = fstory;
		 this.tags = tags; }
	 
	/*
	 * public StoreDao getStore() { return store; }
	 */
	public List<HashtagDto> getTags() {
		return tags;
	}

	/*
	 * public void setStore(StoreDao store) { this.store = store; }
	 */
	public void setTags(List<HashtagDto> tags) {
		this.tags = tags;
	}
	
	
}
