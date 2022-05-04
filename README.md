# 조회수와 좋아요수 기반 맛집추천 사이트, 야미요(Yummyo)   
    
<img src="https://github.com/Commonerd/commonerd.github.io/blob/master/yummyomain.png" width="70%" height="50%"></img>
    
        
- 프로젝트 주제 및 목적 : 조회수와 좋아요 수를 기반으로 한 맛집 추천사이트
- 개발기간 : 2022.4.1.~2022.5.2.
- 개발인원 : 4명  (UI, DB는 공동설계)
- 송영화 : 총괄, 메인페이지, 카카오맵API 적용, 최신맛집(등록,수정,삭제), 맛집 상세페이지 전반, 위시리스트, 로그인/회원가입
- 오정화 : 해시태그 기능, 푸드스토리, 전체검색 기능
- 최지훈 : 좋아요 기능, 맛집 상세페이지, 리뷰기능, 미디어픽, 프론트 영역 중 부트스트랩 앨범형 디자인 적용, footer 구현
- 황태균 : 랜덤메뉴추천 기능, 카카오맵 API 적용, 공지사항
- 프로젝트 선택이유와 중점기능: 지도와 이미지를 활용하여 맛집정보를 공유하는 것이 매력적이라 판단함. 랜덤메뉴추천, 위시리스트, 좋아요, 해시태그 기능에 중점.


### 개발환경

- OS : Window10
- Database : Oracle21c
- Tools : Eclipse(STS), SQL Developer
- Front End : Html5, Css3, Javascript
- Back End : Java, JSP, jQuery, Spring Boot
- API : 카카오맵 API
   
- DB 테이블   
    
<img src="https://github.com/Commonerd/commonerd.github.io/blob/master/yummyotable.png" width="70%" height="50%"></img>


### 기술설명 및 핵심내용

- 회원가입 및 로그인 : 회원가입 시 중복검사, 메일 인증번호 발급, 세션과 인터셉터 적용
- 메인페이지: 앨범형으로 맛집 리스트 구현, TOP9(조회수 순) 식당 배너 클릭 시 해당 식당의 상세 페이지로 이동
- 오늘 뭐 먹지?: 랜덤 메뉴 선택, 해당 메뉴를 카카오 map API로 자동 검색
- 검색 페이지: 키워드(카테고리, 식당 이름, 글 제목) 필터링, 페이지네이션
- 최신맛집 리스트: 최신순으로 나열, 맛집등록, 클릭시 상세 페이지로 이동, 페이지네이션
- 맛집상세페이지: 위도와 경도를 이용한 kakao map API 구현, 스마트에디터를 활용한 음식 사진 정보, 위시리스트 등록, 좋아요, 해시태그, 맛집수정, 맛집삭제
- 공지사항 : 글등록, 수정, 삭제
- 미디어픽 : 방송에 나온 맛집 소개, 앨범형 리스트 구현, 글등록, 수정, 삭제, 페이지네이션
- 푸드스토리 : 음식의 유래와 효능, 앨범형 리스트 구현, 글등록, 수정, 삭제, 페이지네이션   
   
   
- 맛집상세페이지    
    
<img src="https://github.com/Commonerd/commonerd.github.io/blob/master/yummyodetail.png" width="70%" height="50%"></img>

    
- 랜덤메뉴추천     
    
<img src="https://github.com/Commonerd/commonerd.github.io/blob/master/yummyorandom.png" width="70%" height="50%"></img>

    
- 맛집위시리스트    
    
<img src="https://github.com/Commonerd/commonerd.github.io/blob/master/yummyowishlist.png" width="70%" height="50%"></img>


- 푸드스토리    
     
<img src="https://github.com/Commonerd/commonerd.github.io/blob/master/yummyofs.png" width="70%" height="50%"></img>
      
- 미디어픽      
    
<img src="https://github.com/Commonerd/commonerd.github.io/blob/master/yummyompick.png" width="70%" height="50%"></img>
      
- 회원가입    
    
<img src="https://github.com/Commonerd/commonerd.github.io/blob/master/yummyojoin.png" width="70%" height="50%"></img>

