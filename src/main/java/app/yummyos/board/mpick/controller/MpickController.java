package app.yummyos.board.mpick.controller;

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

import app.yummyos.board.mpick.dto.MCommDto;
import app.yummyos.board.mpick.dto.MpickDto;
import app.yummyos.board.mpick.service.MCommService;
import app.yummyos.board.mpick.service.MpickService;
import app.yummyos.users.dto.UsersDto;

@SessionAttributes("user")
@Controller
public class MpickController {

	@Autowired
	MpickService service;
	
	@ModelAttribute("user")
	public UsersDto getDto() {
		return new UsersDto();
	}

	@GetMapping("/board/mpick/write")
	public String writeForm(@ModelAttribute("user") UsersDto dto) {
		return "board/mpick/write";
	}
	
	@PostMapping("/board/mpick/write")
	public String write(MpickDto dto) {
		service.insert(dto);
		return "redirect:/board/mpick/list";//글목록
	}

	//요청 page 번호를 받아서 페이지에 맞는 글을 갯수에 맞게 꺼내옴
	//전체 글 갯수에 맞춰 페이징 처리
	
	@RequestMapping("/board/mpick/list")
	public String list(@RequestParam(name="p", defaultValue = "1") int page, Model m) {

		//글이 있는지 체크
		int count = service.count();
		if(count > 0 ) {
		int perPage = 10; // 한 페이지에 보일 글의 갯수
		int startRow = (page - 1) * perPage + 1;
		int endRow = page * perPage;
		
		List<MpickDto> mpickList = service.mpickList(startRow, endRow);
		m.addAttribute("mList", mpickList);

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
		return "board/mpick/list";
	}
	
	
	@Autowired
	MCommService c_service;
	
	@GetMapping("board/mpick/content/{no}")
	public String content(@PathVariable int no, Model m) {
		MpickDto dto = service.mpickOne(no);
		m.addAttribute("dto", dto);
		List<MCommDto> cList = c_service.selectMComm(no);
		m.addAttribute("cList", cList);
		return "board/mpick/content";
	}
	
	@GetMapping("board/mpick/update/{no}")
	public String updateForm(@PathVariable int no, Model m) {
		MpickDto dto = service.mpickOne(no);
		m.addAttribute("dto", dto);
		return "board/mpick/updateForm";
	}
	
	@PutMapping("/board/mpick/update")
	public String update(MpickDto dto) {
		service.updatempick(dto);
		return "redirect:list";
	}
	
	@DeleteMapping("/board/mpick/delete")
	@ResponseBody
	public String delete(int no) {
		int i = service.deletempick(no); 
		return ""+i;
	}
	
	@GetMapping("/board/mpick/search")
	public String search(int searchn, String search,@RequestParam(name="p", defaultValue = "1") int page, Model m) {
		int count = service.countSearch(searchn,search);
		if(count > 0) {
		
		int perPage = 10; // 한 페이지에 보일 글의 갯수
		int startRow = (page - 1) * perPage + 1;
		int endRow = page * perPage;
		
		List<MpickDto> mpickList = service.mpickListSearch(searchn,search,startRow, endRow);
		m.addAttribute("mList", mpickList);

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
		
		return "board/mpick/search";
	}
	

	
}