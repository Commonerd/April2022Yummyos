package app.yummyos.board.notice.controller;

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

import app.yummyos.board.notice.dto.NtCommDto;
import app.yummyos.board.notice.dto.NoticeDto;
import app.yummyos.board.notice.service.NtCommService;
import app.yummyos.board.notice.service.NoticeService;
import app.yummyos.users.dto.UsersDto;


@SessionAttributes("user")
@Controller
public class NoticeController {

	@Autowired
	NoticeService service;
	
	@ModelAttribute("user")
	public UsersDto getDto() {
		return new UsersDto();
	}

	@GetMapping("/board/notice/write")
	public String writeForm(@ModelAttribute("user") UsersDto dto) {
		return "board/notice/write";
	}
	
	@PostMapping("/board/notice/write")
	public String write(NoticeDto dto) {
		service.insert(dto);
		return "redirect:/board/notice/list";//글목록
	}

	//요청 page 번호를 받아서 페이지에 맞는 글을 갯수에 맞게 꺼내옴
	//전체 글 갯수에 맞춰 페이징 처리
	
	@RequestMapping("/board/notice/list")
	public String list(@RequestParam(name="p", defaultValue = "1") int page, Model m) {

		//글이 있는지 체크
		int count = service.count();
		if(count > 0 ) {
		int perPage = 10; // 한 페이지에 보일 글의 갯수
		int startRow = (page - 1) * perPage + 1;
		int endRow = page * perPage;
		
		List<NoticeDto> noticeList = service.noticeList(startRow, endRow);
		m.addAttribute("nList", noticeList);

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
		return "board/notice/list";
	}
	
	
	@Autowired
	NtCommService c_service;
	
	@GetMapping("board/notice/content/{no}")
	public String content(@PathVariable int no, Model m) {
		NoticeDto dto = service.noticeOne(no);
		m.addAttribute("dto", dto);
		List<NtCommDto> cList = c_service.selectComm(no);
		m.addAttribute("cList", cList);
		return "board/notice/content";
	}
	
	@GetMapping("board/notice/update/{no}")
	public String updateForm(@PathVariable int no, Model m) {
		NoticeDto dto = service.noticeOne(no);
		m.addAttribute("dto", dto);
		return "board/notice/updateForm";
	}
	
	@PutMapping("/board/notice/update")
	public String update(NoticeDto dto) {
		service.updateNotice(dto);
		return "redirect:list";
	}
	
	@DeleteMapping("/board/notice/delete")
	@ResponseBody
	public String delete(int no) {
		int i = service.deleteNotice(no); 
		return ""+i;
	}
	
	@GetMapping("/board/notice/search")
	public String search(int searchn, String search,@RequestParam(name="p", defaultValue = "1") int page, Model m) {
		int count = service.countSearch(searchn,search);
		if(count > 0) {
		
		int perPage = 10; // 한 페이지에 보일 글의 갯수
		int startRow = (page - 1) * perPage + 1;
		int endRow = page * perPage;
		
		List<NoticeDto> noticeList = service.noticeListSearch(searchn,search,startRow, endRow);
		m.addAttribute("nList", noticeList);

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
		
		return "board/notice/search";
	}
	

	
}