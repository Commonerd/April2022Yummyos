package app.yummyos.search.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.search.dao.SearchDao;
import app.yummyos.search.service.SearchResult;
import app.yummyos.search.dto.SearchCommand;

@Service
public class SearchService {
	
	@Autowired
	SearchDao dao;
	
//	public String Store() {
//	};
	
	
	public SearchResult search(SearchCommand command) {
		return new SearchResult();
	}
}
