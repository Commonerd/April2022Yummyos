package app.yummyos.search.controll;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import app.yummyos.board.fstory.dto.FstoryDto;
import app.yummyos.board.fstory.service.FstoryService;
import app.yummyos.board.mpick.dto.MpickDto;
import app.yummyos.board.mpick.service.MpickService;
import app.yummyos.search.dto.SearchDto;
import app.yummyos.search.service.SearchService;
import app.yummyos.store.dto.StoreDto;
import app.yummyos.store.service.StoreService;

@Controller
public class SearchController {
	
	@Autowired
	SearchService searchService;
	
	@Autowired
	StoreService storeService;
	
	@Autowired
	FstoryService fstoryService;

	@Autowired
	MpickService mpickService;
	
	
	/*
	 * @GetMapping("search/list") public String ListAll(String search, Model m) {
	 * 
	 * 
	 * List<FstoryDto> fstoryList = fstoryService.fstoryAllSearch(search);
	 * m.addAttribute("fList", fstoryList); List<StoreDto> storeList =
	 * storeService.storeAllSearch(search); m.addAttribute("sList", storeList);
	 * List<MpickDto> mpickList = mpickService.mpickAllSearch(search);
	 * m.addAttribute("mList", mpickList);
	 * 
	 * 
	 * return "search/list"; }
	 */
	@RequestMapping("/all/search")
	public String searchList(String search, @RequestParam(name = "p", defaultValue = "1") int page, Model m) {

		int perPage = 6; // 한 페이지에 보일 글의 갯수
		int startRow = (page - 1) * perPage + 1;
		int endRow = page * perPage;
		
		List<StoreDto> storeList = storeService.AllSearchStoreList(search,startRow, endRow);
		m.addAttribute("sList", storeList);
		//m.addAttribute("sListsize", storeList.size());
		List<FstoryDto> fstoryList = fstoryService.AllSearchFstoryList(search,startRow, endRow);
		m.addAttribute("fList", fstoryList);
		//m.addAttribute("fListsize", fstoryList.size());
		List<MpickDto> mpickList = mpickService.AllSearchMpickList(search,startRow, endRow);
		m.addAttribute("mList", mpickList);
		//m.addAttribute("mListsize", mpickList.size());

		m.addAttribute("search", search);

		return "search/list";
	}
	
}
