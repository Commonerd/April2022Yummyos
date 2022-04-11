package app.yummyos.search.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import app.yummyos.search.service.SearchService;

public class SearchController {

	/*@Autowired
	SearchService service;

	
	 * @Autowired 
	 * StoreService storeservice;
	 

	@PostMapping("/search/recentUser")
	public Object userList(@RequestParam(required = true) final long id) {
		final BasicResponse result = new BasicResponse();
		result.status = true;
		result.data = "성공";
		result.object = service.usersList(id);
		;
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

	@PostMapping("/search/recentStore")
	@ApiOperation(value = "최근 식당검색")
	public Object storeList(@RequestParam(required = true) final long id) {
		final BasicResponse result = new BasicResponse();
		result.status = true;
		result.data = "성공";
		result.object = service.storeList(id);
		;
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

	@GetMapping("/search/tagSearch")
	public Object test() {
		final BasicResponse result = new BasicResponse();
		ListDto<TagsResponse> list = service.tagSearch();
		if (list != null) {
			result.status = true;
			result.data = "성공";
			result.object = list;
		} else {
			result.status = false;
			result.data = "결과가 없습니다.";
		}
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

*/
}