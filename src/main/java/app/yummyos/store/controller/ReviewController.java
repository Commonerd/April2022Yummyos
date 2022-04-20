package app.yummyos.store.controller;

import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import app.yummyos.store.dto.ReviewDto;
import app.yummyos.store.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService service;
	
	@PostMapping("/review/insert")
	@ResponseBody
	public String insertReview(ReviewDto dto, MultipartFile files, HttpServletRequest request) {
		String image = upload(files, request);
		
		dto.setImage(image);
		int i = service.insertReview(dto);
		return i+"";
	}
	
	@DeleteMapping("/review/delete/{no}")
	@ResponseBody
	public String deleteReview(@PathVariable int no) {
		int i = service.deleteReview(no);
		return i+"";
	}
	
	private String upload(MultipartFile file, HttpServletRequest request) {
		String origName = file.getOriginalFilename();
		int index = origName.lastIndexOf(".");
		String ext = origName.substring(index + 1);// 파일 확장자 저장

		Random r = new Random();
		String fileName = System.currentTimeMillis() + "_" + r.nextInt(50) + "." + ext;

		try {
			//String path = ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
			String path = request.getServletContext().getRealPath("/review/img");
			File f = new File(path, fileName);
			file.transferTo(f);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return fileName;
	}
	
	
	
}
