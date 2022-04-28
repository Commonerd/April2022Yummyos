package app.yummyos.store.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import app.yummyos.store.dto.LikeDto;
import app.yummyos.store.service.LikeService;

@RestController
public class likecontroller {

   @Autowired
   LikeService likeservice;

   @PostMapping("/like/likeupdate")
   public Map<String, String> likeupdate(@RequestBody LikeDto likedto) {
      Map<String, String> map = new HashMap<String, String>();

      int ltlike = 0;

      int check = likeservice.ltlikecount(likedto);

      if (check == 0) {

         likeservice.likeinsert(likedto);// 좋아요 추가
         map.put("count", "1");
      
      } else if (check == 1) {
         try {
            check = likeservice.ltlikegetinfo(likedto);
            likedto.setCount(check);
            
            likeservice.likeupdate(likedto);
            
            ltlike = likeservice.ltlikegetinfo(likedto);
            map.put("count", ltlike+"");
            
         } catch (Exception e) {
            e.printStackTrace();
         }

      }
      
      System.out.println(map.get("count"));
      
      return map;
   }

}
