package app.yummyos.store.controller;

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


import app.yummyos.store.dto.LikeDto;
import app.yummyos.store.dto.ReviewDto;

import app.yummyos.store.dto.StoreDto;

import app.yummyos.store.service.LikeService;
import app.yummyos.store.service.ReviewService;

import app.yummyos.store.service.StoreService;
import app.yummyos.users.dto.UsersDto;


@SessionAttributes("user")
@Controller
public class StoreController {

		@Autowired
		StoreService service;
		@Autowired
		LikeService likeservice;
		
		@ModelAttribute("user")
		public UsersDto getDto() {
			return new UsersDto();
		}
		
		@GetMapping("/store/insert")
		public String insertForm(@ModelAttribute("user")UsersDto dto) {
			return "store/insert";
		}
		@PostMapping("/store/insert")	
		public String insertStore(StoreDto dto) {
			service.insertStore(dto);
			return "redirect:/store/list";//가게목록
		}
		
		//요청 page 번호를 받아서 페이지에 맞는 글을 갯수에 맞게 꺼내옴
		//전체 글 갯수에 맞춰 페이징 처리
		
		@RequestMapping("store/list")
		public String list(@RequestParam(name="p", defaultValue = "1") int page, Model m) {

			//글이 있는지 체크
			int count = service.count();
			if(count > 0 ) {
			int perPage = 20; // 한 페이지에 보일 글의 갯수
			int startRow = (page - 1) * perPage + 1;
			int endRow = page * perPage;
			
			List<StoreDto> storeList = service.storeList(startRow, endRow);
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
			return "store/list";
		}


		@Autowired
		ReviewService r_service;
				
		@GetMapping("store/content/{no}")
		public String contentStore(@PathVariable int no, Model m, @ModelAttribute("User") UsersDto n) {
			StoreDto dto = service.storeOne(no);
			m.addAttribute("dto", dto);
			List<ReviewDto> cList = r_service.selectReview(no);
			m.addAttribute("cList", cList);
			
			LikeDto likedto = new LikeDto();
			likedto.setLtbid(no);
			likedto.setLtmid(n.getId());
			
			int ltlike = 0;
			
			int check = likeservice.ltlikecount(likedto);
			
			/*
			 * if(check ==0) {
			 * 
			 * likeservice.likeinsert(likedto);
			 * 
			 * }else if(check==1) {
			 * 
			 * ltlike = likeservice.ltlikegetinfo(likedto); }
			 */
			
			m.addAttribute("ltlike",ltlike);
			m.addAttribute("check", check);
			return "store/content";
		}


		@GetMapping("store/update/{no}")
		public String updateForm(@PathVariable int no, Model m) {
			StoreDto dto = service.storeOne(no);
			m.addAttribute("dto", dto);
			return "store/updateForm";
		}
		
		@PutMapping("store/update/store/update")
		public String update(StoreDto dto) {
			service.updateStore(dto);
			return "redirect:/store/list";   
		}
		
		@DeleteMapping("store/delete")
		@ResponseBody
		public String delete(int no) {
			int i = service.deleteStore(no); 
			return ""+i;
		}
		
		@GetMapping("store/store/search")
		public String search(int searchn, String search,@RequestParam(name="p", defaultValue = "1") int page, Model m) {
			int count = service.countSearch(searchn,search);
			if(count > 0) {
			
			int perPage = 20; // 한 페이지에 보일 글의 갯수
			int startRow = (page - 1) * perPage + 1;
			int endRow = page * perPage;
			
			List<StoreDto> storeList = service.storeListSearch(searchn,search,startRow, endRow);
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
			
			return "store/search";
		}
		public void test() {
			
		}

		
	}


