<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>검색 글 목록</title>
<style>
#center {
   width: 700px;
   margin-left: auto;
   margin-right: auto;
}

table {
   border: 1px solid black;
   width: 700px;
   border-collapse: collapse;
}

th {border: 1px solid black;
   background-color: Aquamarine;
   width: 150px;
}
td{border: 1px solid black;}
a {
   margin: 10px auto;
}

#page {
   text-align: center;
}
</style>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
   
          
</head>

<style>
#login {
   margin-right:0px;
}

#join {
margin-right:5px;
}

.selector-for-some-widget {
  box-sizing: content-box;
}

h1 {
 color: black;
 text-align:center;
  padding:50px;
   margin: 20px;
}

h2 {
   color: lightslategray;
   text-align:center;
     padding:50px;
   margin: 20px;
}

p {
 color:red !important;
 font-size: 0.9em;
 line-ehight: 2.0;
}

#center {
   width: 700px;
   margin-left: auto;
   margin-right: auto;
}

table {
   border: 1px solid black;
   width: 700px;
   border-collapse: collapse;
}

th {
   border: 1px solid black;
   background-color: Aquamarine;
   width: 30px;
}

td {
   border: 1px solid black;
}

a {
   margin: 10px auto;
}

#page {
   text-align: center;
}
</style>
</head>
<body>
   
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-bs-target="#navbarTogglerDemo03"
            aria-controls="navbarTogglerDemo03" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <a class="navbar-brand" href="/">메인</a>
         <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <li class="nav-item active"><a class="nav-link active"
                  aria-current="page" href="/details/ladder">오늘 뭐먹지?<span
                     class="sr-only"></span></a></li>
               <li class="nav-item"><a class="nav-link" href="/store/list">최신맛집</a></li>
               <li class="nav-item"><a class="nav-link"
                  href="/board/notice/list">공지사항</a></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#"
                  id="navbarDropdownMenuLink" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false">테마맛집기행</a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                     <li><a class="dropdown-item" href="/board/mpick/list">미디어픽</a></li>
                     <li><a class="dropdown-item" href="/board/fstory/list">푸드스토리</a></li>
                  </ul></li>
            </ul>
         </div>
         <div id="search">
            <form class="d-flex" action="/all/search">
               <c:forEach items="${search}" var="search">
                  <a href="/search/search?search=${search}"></a>
               </c:forEach>
               <input class="form-control me-2" name="search" id="search"
                  type="search" style="width: 500px;" placeholder="원하시는 메뉴를 입력해주세요"
                  aria-label="Search">
               <button class="btn btn-outline-success" type="submit">검색</button>
            </form>
         </div>
      </div>
      <c:if test="${ user.id != null }">
         <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
               <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"> ${user.id}님 환영합니다 </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                     <li><a class="dropdown-item" href="/wishlist">위시리스트</a></li> 
                     <li><a class="dropdown-item" href="/update">회원 정보 수정</a></li>
                     <c:if test="${ user.role == 'role_admin'}">
                        <li><a class="dropdown-item" href="/board/mpick/write">새글 등록</a></li>
                     </c:if>
                     <li><a class="dropdown-item" href="/logout">로그아웃</a></li>
                  </ul>
               </li>
            </ul>
         </div>
      </c:if>
      <c:if test="${ user.id == null }">
         <a href="/login" class="btn btn-primary"
            style="width: 100px; height: 35px;">로그인</a>
         <a href="/insert" class="btn btn-primary"
            style="width: 120px; height: 35px;">회원가입</a>
      </c:if>
      
   </nav>


   <div id="center">
      <h4>${search}(으)로 검색한 결과입니다.</h4>
      

      <c:if test="${count != 0 }">
       <div class="container">
       <div class="row">
            <c:forEach items="${sList}" var="store">
            <div class="col-md-4 mb-5" >
            <div class="card" style="width: 100%">
            <img src="/store/img/${store.image}" class="card-img-top" alt="...">
                     <div class="card-body">
                        <h5 class="card-title">${store.name}</h5>
                        <h6 class="card-text">${store.category}</h6>
                        <h6 class="card-text">${store.detail}</h6>
                        <c:forEach items="${hash}" var="hashtag" begin="1">
                        <a href="/store/search?searchn=1&search=${hashtag}">#${hashtag} </a> 
                  </c:forEach>
                        <p class="card-text">좋아요♥ ${store.blike}</p>
                        <a href="/store/content/${store.no}" class="btn btn-primary">맛집보기</a>
                     </div>
                  </div>
               </div>
            </c:forEach>
            </div>   
            </c:if>
      <c:if test="${count == 0 }">
   아직 등록된 가게가 없습니다.
</c:if>
            

<div id="page">
         <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
               <li class="page-item disabled">
               <c:if test="${begin > pageNum }">
                     <a class="page-link" href="search?p=${begin-1}&search=${search}&searchn=${searchn}&kind=${kind}">[이전]</a>
                  </c:if></li>
               <li class="page-item active" aria-current="page"><c:forEach
                     begin="${begin }" end="${end}" var="i">
                     <c:if test="${page == i }">
                        <li class="page-item active"><a class="page-link"
                           href="search?p=${i}&search=${search}&searchn=${searchn}&kind=${kind}">${i}</a></li>
                     </c:if>
                     <c:if test="${page != i }">
                        <li class="page-item"><a class="page-link"
                           href="search?p=${i}&search=${search}&searchn=${searchn}&kind=${kind}">${i}</a></li>
                     </c:if>
                  </c:forEach>
               <li class="page-item"><c:if test="${end < totalPages }">
                     <a class="page-link" href="search?p=${end+1}&search=${search}&searchn=${searchn}">[다음]</a>
                  </c:if></li>
            </ul>
         </nav>


		<c:if test="${count == 0 }">
	
</c:if>


</body>
</html>
