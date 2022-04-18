package app.yummyos.search.dao;

import java.util.List;

import app.yummyos.hashtag.dto.HashtagDto;
import app.yummyos.store.dto.StoreDto;


public class TagsResponse {
	private StoreDto store;
	private List<HashtagDto> tags;
	
	public TagsResponse() {}
	
	public TagsResponse(StoreDto store, List<HashtagDto> tags){
		this.store = store;
		this.tags = tags;
	}

	public StoreDto getStore() {
		return store;
	}

	public List<HashtagDto> getTags() {
		return tags;
	}

	public void setStore(StoreDto store) {
		this.store = store;
	}

	public void setTags(List<HashtagDto> tags) {
		this.tags = tags;
	}
	
	
}
