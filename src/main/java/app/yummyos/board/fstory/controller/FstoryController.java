package app.yummyos.board.fstory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import app.yummyos.board.fstory.dto.FsCommDto;
import app.yummyos.board.fstory.dto.FstoryDto;
import app.yummyos.board.fstory.service.FsCommService;
import app.yummyos.board.fstory.service.FstoryService;
import app.yummyos.users.dto.UsersDto;

@Controller
@SessionAttributes("users")
public class FstoryController {
	
	@Autowired
	FstoryService service;
	
	@ModelAttribute("users")
	public UsersDto getDto() {
		return new UsersDto();
	}

	@GetMapping("/board/fstory/write")
	public String writeForm() {
		return "board/fstory/write";	
	}
	

	@PostMapping("/board/fstory/list")//글 목록
	public String write(FstoryDto dto) {
		service.insert(dto);
		return "redirect:list";
	}
	

	// 요청 page 번호를 받아서 페이지에 맞는 글을 갯수에 맞게 꺼내옴
	// 전체 글 갯수에 맞춰 페이징 처리
	@RequestMapping("/board/fstory/list")
	public String list(@RequestParam(name = "p", defaultValue = "1") int page, Model m) {

		// 글이 있는지 체크
		int count = service.count();
		if (count > 0) {

			final int perPage = 10; // 한 페이지에 보일 글의 갯수
			// -가상번호 rownum사용시 start, end 코드 사용
			int startRow = (page - 1) * perPage + 1; // 시작 글 번호
			int endRow = page * perPage; // 마지막 글 번호

			List<FstoryDto> fstoryList = service.fstoryList(startRow, endRow);
			m.addAttribute("fList", fstoryList);

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
		return "board/fstory/list";
	}
	
	@GetMapping("/board/fstory/search")
	public String search(int searchn, String search,@RequestParam(name="p", defaultValue = "1") int page, Model m) {
		int count = service.countSearch(searchn,search);
		if(count > 0) {
		
		int perPage = 10; // 한 페이지에 보일 글의 갯수
		int startRow = (page - 1) * perPage + 1;
		int endRow = page * perPage;
		
		List<FstoryDto> fstoryList = service.fstoryListSearch(searchn,search,startRow, endRow);
		m.addAttribute("fList", fstoryList);

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
		
		return "board/fstory/search";
	}
	
	@Autowired
	FsCommService fsc_service;
	
	@GetMapping("/board/fstory/content/{no}")
	public String content(@PathVariable int no,Model m) {
		FstoryDto dto = service.fstoryOne(no);
		m.addAttribute("dto",dto);
		List<FsCommDto> cList = fsc_service.selectComm(no);
		m.addAttribute("cList",cList);
		return "board/fstory/content";
	}

	@GetMapping("board/fstory/update/{no}")
	public String updateForm(@PathVariable int no, Model m) {
		return "board/updateForm";
	}
	
	@PutMapping("/board/fstory/update")
	public String update (FstoryDto dto) {
		service.updateFstory(dto);
		return "redirect:list";
	}
	
	@DeleteMapping("/board/fstory/delete")
	@ResponseBody
	public String delete(int no) {
		int i= service.deleteFstory(no);
		return ""+i;
	}

}
