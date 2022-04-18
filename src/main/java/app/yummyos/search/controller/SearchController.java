package app.yummyos.search.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriComponentsBuilder;

import app.yummyos.search.dao.BasicResponse;
import app.yummyos.search.dao.TagsResponse;
import app.yummyos.search.service.SearchService;
import app.yummyos.store.dto.StoreDto;
import app.yummyos.store.service.StoreService;

@Controller
public class SearchController {
/*
	@Autowired
	SearchService service;
	*/
	@Autowired
	StoreService storeservice;
	

	// 요청 page 번호를 받아서 페이지에 맞는 글을 갯수에 맞게 꺼내옴
		// 전체 글 갯수에 맞춰 페이징 처리
		@RequestMapping("/search/list")
		public String list(@RequestParam(name = "p", defaultValue = "1") int page, Model m) {

			// 글이 있는지 체크
			int count = storeservice.count();
			if (count > 0) {

				final int perPage = 10; // 한 페이지에 보일 글의 갯수
				//-가상번호 rownum사용시 start, end 코드 사용
				int startRow = (page - 1) * perPage + 1; //시작 글 번호 
				int endRow = page * perPage; //마지막 글 번호

				List<StoreDto> storeList = storeservice.storeList(startRow, endRow);
				m.addAttribute("sList", storeList);

				int pageNum = 5;
				int totalPages = count / perPage + (count % perPage > 0 ? 1 : 0); // 전체 페이지 수

				int begin = (page - 1) / pageNum * pageNum + 1;
				int end = begin + pageNum - 1;
				if (end > totalPages) {
					end = totalPages;
				}
				m.addAttribute("begin", begin);
				m.addAttribute("end", end);
				m.addAttribute("pageNum", pageNum);
				m.addAttribute("totalPages", totalPages);

			}
			m.addAttribute("count", count);
			return "search/list";
		}
		

		@GetMapping("/search/search")
		public String search(int searchn, String search,@RequestParam(name="p", defaultValue = "1") int page, Model m) {
			int count = storeservice.countSearch(searchn,search);
			if(count > 0) {
			
			int perPage = 10; // 한 페이지에 보일 글의 갯수
			int startRow = (page - 1) * perPage + 1;
			int endRow = page * perPage;
			
			List<StoreDto> storeList = storeservice.storeListSearch(searchn,search,startRow, endRow);
			m.addAttribute("sList", storeList);

			int pageNum = 5;
			int totalPages = count / perPage + (count % perPage > 0 ? 1 : 0); //전체 페이지 수
			
			int begin = (page - 1) / pageNum * pageNum + 1;
			int end = begin + pageNum -1;
			if(end > totalPages) {
				end = totalPages;
			}
			 m.addAttribute("begin", begin);
			 m.addAttribute("end", end);
			 m.addAttribute("pageNum", pageNum);
			 m.addAttribute("totalPages", totalPages);
			
			}
			m.addAttribute("count", count);
			m.addAttribute("searchn", searchn);
			m.addAttribute("search", search);
			
			return "search/search";
		}

		
		
		
	
	/*
    @PostMapping("/store/storedatail")
	 public Object storeList(@RequestParam(required = true) final long id) {
	    	final BasicResponse result = new BasicResponse();
	    	//result.status = true;
			//result.data = "성공"; 
			//result.object = service.storeList(id);;
			return new ResponseEntity<>(result, HttpStatus.OK);
	    }
    @GetMapping("/search/tagSearch")
	 public Object test() {
			final BasicResponse result = new BasicResponse();
			List<TagsResponse> list = service.tagSearch();
			if (list != null) {
				result.status = true;
				result.data = "성공";
				result.Object = list;
			} else {
				result.status = false;
				result.data = "결과가 없습니다.";
			}
			return new ResponseEntity<>(result, HttpStatus.OK);
		}

	*/
	
}
