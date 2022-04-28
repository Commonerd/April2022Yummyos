package app.yummyos.store.controller;

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
      public String insertStore(StoreDto dto, MultipartFile files, HttpServletRequest request) {
         String image = upload(files, request);
         dto.setImage(image);
         service.insertStore(dto);
         return "redirect:/store/list";//가게목록
      }
      
      private String upload(MultipartFile file, HttpServletRequest request) {
         String origName = file.getOriginalFilename();
         int index = origName.lastIndexOf(".");
         String ext = origName.substring(index + 1);// 파일 확장자 저장

         Random r = new Random();
         String fileName = System.currentTimeMillis() + "_" + r.nextInt(50) + "." + ext;

<<<<<<< HEAD
         try {
            //String path = ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
            String path = request.getServletContext().getRealPath("/store/img");
            File f = new File(path, fileName);
            file.transferTo(f);
         } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
         }
         return fileName;
      }
      
      //요청 page 번호를 받아서 페이지에 맞는 글을 갯수에 맞게 꺼내옴
      //전체 글 갯수에 맞춰 페이징 처리
      
      @RequestMapping("store/list")
      public String list(@RequestParam(name="p", defaultValue = "1") int page, Model m) {
=======
			try {
				//String path = ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
				String path = request.getServletContext().getRealPath("/store/img");
				File f = new File(path, fileName);
				file.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			return fileName;
		}
		
		//요청 page 번호를 받아서 페이지에 맞는 글을 갯수에 맞게 꺼내옴
		//전체 글 갯수에 맞춰 페이징 처리
		
		@RequestMapping("store/list")
		public String list(@RequestParam(name="p", defaultValue = "1") int page, Model m, String kind) {
>>>>>>> refs/heads/master

<<<<<<< HEAD
         //글이 있는지 체크
         int count = service.count();
         if(count > 0 ) {
         int perPage = 20; // 한 페이지에 보일 글의 갯수
         int startRow = (page - 1) * perPage + 1;
         int endRow = page * perPage;
         
         List<StoreDto> storeList = service.getstorelist(startRow, endRow);
         m.addAttribute("sList", storeList);
         
         System.out.println(storeList);
=======
			//글이 있는지 체크
			int count = service.count(kind);
			if(count > 0 ) {
			int perPage = 9; // 한 페이지에 보일 글의 갯수
			int startRow = (page - 1) * perPage + 1;
			int endRow = page * perPage;
			
			List<StoreDto> storeList = service.getstorelist(startRow, endRow, kind);
			m.addAttribute("sList", storeList);
			
			System.out.println(storeList);
>>>>>>> refs/heads/master

<<<<<<< HEAD
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
      
      @RequestMapping("/")
      public String indexlist(@RequestParam(name="p", defaultValue = "1") int page, Model m) {
         
         //글이 있는지 체크
         int count = service.count();
         System.out.println("count"+count);
         if(count > 0 ) {
         int perPage = 10; // 한 페이지에 보일 글의 갯수
         int startRow = (page - 1) * perPage + 1;
         int endRow = page * perPage;
         
         List<StoreDto> storeListView = service.storeListView(startRow, endRow);
         m.addAttribute("sList", storeListView);
=======
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
			m.addAttribute("page", page);
			m.addAttribute("count", count);
			m.addAttribute("kind", kind);
			return "store/list";
		}
		
		@RequestMapping("/")
		public String indexlist(@RequestParam(name="p", defaultValue = "1") int page, Model m, String kind) {
			
			//글이 있는지 체크
			int count = service.count(kind);
			System.out.println("count"+count);
			if(count > 0 ) {
			int perPage = 9; // 한 페이지에 보일 글의 갯수
			int startRow = (page - 1) * perPage + 1;
			int endRow = page * perPage;
			
			List<StoreDto> storeListView = service.storeListView(startRow, endRow, kind);
			m.addAttribute("sList", storeListView);
>>>>>>> refs/heads/master

<<<<<<< HEAD
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
         return "store/index";
      }

=======
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
			m.addAttribute("kind", kind);
			return "store/index";
		}
		
		
>>>>>>> refs/heads/master


      @Autowired
      ReviewService r_service;
            
      @GetMapping("store/content/{no}")
      public String contentStore(@PathVariable int no, Model m, @ModelAttribute("user") UsersDto n) {
         StoreDto dto = service.storeOne(no);
         m.addAttribute("dto", dto);
         List<ReviewDto> cList = r_service.selectReview(no);
         m.addAttribute("cList", cList);
         
         LikeDto likedto = new LikeDto();
         likedto.setLtbid(no);
         likedto.setLtmid(n.getId());


			String hashs = dto.getHashtag();
			String [] h = hashs.split("#");
			m.addAttribute("hash", h);
					
			int allCount = likeservice.getAllltlike(no);
			
			int ltlike = 0;
			
			int check = likeservice.ltlikecount(likedto);

			if (check == 1) {
				ltlike = likeservice.ltlikegetinfo(likedto);
			}
			System.out.println("check::"+check+ " ltlike::"+ltlike);
			m.addAttribute("allCount", allCount);
			m.addAttribute("ltlike", ltlike);

			m.addAttribute("ltlike",ltlike);
			m.addAttribute("check", check);
			return "store/content";
		}


<<<<<<< HEAD

      @GetMapping("store/store/content/{no}")
      public String hashtag(@PathVariable int no, Model m, @ModelAttribute("user") UsersDto n) {
         StoreDto dto = service.storeOne(no);
         m.addAttribute("dto", dto);
         
         String hashs = dto.getHashtag();
         String [] h = hashs.split("#");
         m.addAttribute("hash", h);
         
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
      public String update(StoreDto dto, MultipartFile files, HttpServletRequest request) {
         String image = upload(files, request);
         dto.setImage(image);
         service.updateStore(dto);
         return "redirect:/store/list";   
      }
      
      @DeleteMapping("store/delete")
      @ResponseBody
      public String delete(int no) {
         int i = service.deleteStore(no); 
         return ""+i;
      }
      
      @GetMapping("store/search")
      public String search(int searchn, String search,@RequestParam(name="p", defaultValue = "1") int page, Model m) {
         int count = service.countSearch(searchn,search);
                  
         if(count > 0) {
         
         int perPage = 20; // 한 페이지에 보일 글의 갯수
         int startRow = (page - 1) * perPage + 1;
         int endRow = page * perPage;
                  
         List<StoreDto> storeList = service.storeListSearch(searchn,search,startRow, endRow);
         m.addAttribute("sList", storeList);
=======
		public void test() {
			
		}
		
	}
>>>>>>> refs/heads/master

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

      
   }

