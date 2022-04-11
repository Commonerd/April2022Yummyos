package app.yummyos.search.service;

import java.util.List;

import javax.mail.Store;

import app.yummyos.search.dto.HashtagDto;

public class TagsResponse {
	
	private Store store;
	private List<HashtagDto> tags;
	
	public TagsResponse() {}
	
	public TagsResponse(Store store, List<HashtagDto> tags){
		this.store = store;
		this.tags = tags;
	}

	public Store getStore() {
		return store;
	}

	public List<HashtagDto> getTags() {
		return tags;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	public void setTags(List<HashtagDto> tags) {
		this.tags = tags;
	}
	
}
