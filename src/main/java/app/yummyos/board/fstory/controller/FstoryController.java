package app.yummyos.board.fstory.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.multipart.MultipartFile;

import app.yummyos.board.fstory.dto.FsCommDto;
import app.yummyos.board.fstory.dto.FstoryDto;
import app.yummyos.board.fstory.service.FsCommService;
import app.yummyos.board.fstory.service.FstoryService;

import app.yummyos.users.dto.UsersDto;


@Controller
@SessionAttributes("user")
public class FstoryController {

	@Autowired
	FstoryService service;

	@ModelAttribute("user")
	public UsersDto getDto() {
		return new UsersDto();
	}

	private String upload(MultipartFile file, HttpServletRequest request) {
		String origName = file.getOriginalFilename();
		int index = origName.lastIndexOf(".");
		String ext = origName.substring(index + 1);// 파일
		// 확장자 저장

		Random r = new Random();
		String fileName = System.currentTimeMillis() + "_" + r.nextInt(50) + "." + ext;

		try {
			String path = request.getServletContext().getRealPath("/fstory_images");
			File f = new File(path, fileName);
			file.transferTo(f);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return fileName;
	}

	@GetMapping("/board/fstory/write")
	public String writeForm(@ModelAttribute("user") UsersDto dto) {
		return "board/fstory/write";
	}

	@PostMapping("/board/fstory/write") // 글 목록
	public String write(FstoryDto dto, MultipartFile file, HttpServletRequest request) {
		String path = upload(file, request);
		dto.setImage(path);
		service.insert(dto);
		return "redirect:/board/fstory/list";
	}

	// 요청 page 번호를 받아서 페이지에 맞는 글을 갯수에 맞게 꺼내옴
	// 전체 글 갯수에 맞춰 페이징 처리
	@RequestMapping("/board/fstory/list")
	public String list(@RequestParam(name = "p", defaultValue = "1") int page, Model m,String kind) {
		 System.out.println("kind"+kind);
	      //글이 있는지 체크
	      int count = service.count(kind);
	      if(count > 0 ) {
			int perPage = 6; // 한 페이지에 보일 글의 갯수
			int startRow = (page - 1) * perPage + 1; // 시작 글 번호
			int endRow = page * perPage; // 마지막 글 번호

			List<FstoryDto> fstoryList = service.fstoryList(startRow, endRow,kind);
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
	      m.addAttribute("page", page);
	      m.addAttribute("count", count);
	      m.addAttribute("kind", kind);

		return "board/fstory/list";
	}

	@Autowired
	FsCommService fsc_service;

	@GetMapping("/board/fstory/content/{no}")
	public String content(@PathVariable int no, Model m) {
		FstoryDto dto = service.fstoryOne(no);
		m.addAttribute("dto", dto);
		List<FsCommDto> cList = fsc_service.selectfsComm(no);
		m.addAttribute("cList", cList);

		return "board/fstory/content";
	}

	@GetMapping("board/fstory/update/{no}")
	public String updateForm(@PathVariable int no, Model m,MultipartFile file, HttpServletRequest request) {
		FstoryDto dto = service.fstoryOne(no);
		String path = upload(file, request);
		dto.setImage(path);
		m.addAttribute("dto", dto);
		return "board/fstory/updateForm";
	}

	@PutMapping("/board/fstory/update")
	public String update(FstoryDto dto) {
		service.updateFstory(dto);
		return "redirect:/board/fstory/list";
	}

	@DeleteMapping("/board/fstory/delete")
	@ResponseBody
	public String delete(int no) {
		int i = service.deleteFstory(no);
		return "" + i;
	}

	@GetMapping("/board/fstory/search")
	public String search(int searchn, String search, @RequestParam(name = "p", defaultValue = "1") int page, Model m) {
		int count = service.countSearch(searchn, search);
		
		if (count > 0) {

			int perPage = 6; // 한 페이지에 보일 글의 갯수
			int startRow = (page - 1) * perPage + 1;
			int endRow = page * perPage;

			List<FstoryDto> fstoryList = service.fstoryListSearch(searchn, search, startRow, endRow);
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
		m.addAttribute("searchn", searchn);
		m.addAttribute("search", search);
	
		

		return "board/fstory/search";
	}

}
