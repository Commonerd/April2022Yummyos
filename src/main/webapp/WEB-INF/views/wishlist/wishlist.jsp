<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<!--  wList begin end count pageNum totalPages -->
<title>위시리스트 목록</title>
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
  <a class="navbar-brand" href="/">메인</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/details/ladder">오늘 뭐먹지?<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/store/list">최신맛집</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/board/notice/list">공지사항</a>
      </li>	
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          테마맛집기행
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/board/mpick/list">미디어픽</a>
          <a class="dropdown-item" href="/board/fstory/list">푸드스토리</a>
        </div>
      </li>
    </ul>
    	<div id="search">
	<form class="form-inline my-2 my-lg-0" action="/all/search">
		<c:forEach items="${search}" var="search">
			<a href="/search/search?search=${search}">${search}</a>
		</c:forEach>
			<br>
			<input name="search" id="search" type="search" style="width: 800px;" class="form-control mr-sm-2" placeholder="원하시는 메뉴를 입력해주세요" aria-label="Search">
		<input type="submit" value="검색" class="btn btn-outline-success my-3 my-sm-0" style="color:black;border-color:black;" aria-label="Search">
	</form>
</div>

<c:if test="${ user.id != null }">
<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ${user.id}님 환영합니다
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/wishlist">위시리스트</a>
          <a class="dropdown-item" href="/update">회원 정보 수정</a>
          	<c:if test="${ user.role == 'role_admin'}">
		<a class="dropdown-item" href="insert">가게 등록</a>
			</c:if>
          <a class="dropdown-item" href="/logout">로그아웃</a>
        </div>
      </li>
		</c:if>
		<c:if test="${ user.id == null }">
		 <a href="/loginform" id="login" class="btn btn-primary" style="width:100px; height:55px;">로그인</a>
 		<a href="/insert" id="join" class="btn btn-primary" style="width:120px; height:55px;">회원가입</a>
		</c:if>
  </div>
</nav>



		<h1>위시리스트</h1>
		
<!-- 위시리스트 앨범폼 -->
		
		<c:if test="${count != 0 }">
			<div class="container">         
            <div class="row">
            <c:forEach items="${wList}" var="wishlist">
               <div class="col-md-4 mb-5">
                  <div class="card" style="width: 100%">
                     <div class="card-body">
                        <h5 class="card-title">${wishlist.store_name}</h5>
                        <h6 class="card-text">${wishlist.category}</h6>
                        <a href="/store/content/${wishlist.store_no}" class="btn btn-primary">맛집보기</a>
                        <h6 class="card-text"><a id="${wishlist.store_no}" href="#">삭제</a></h6>
                     </div>
                  </div>
               </div>
               
            </c:forEach>
            </div>   
            </div>
				
			 <div id="page">
         <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
               <li class="page-item disabled">
               <c:if test="${begin > pageNum }">
                     <a class="page-link" href="wishlist?p=${begin-1 }&kind=${kind}">[이전]</a>
                  </c:if></li>
               <li class="page-item active" aria-current="page"><c:forEach
                     begin="${begin }" end="${end}" var="i">
                     <c:if test="${page == i }">
                        <li class="page-item active"><a class="page-link"
                           href="wishlist?p=${i}&kind=${kind}">${i}</a></li>
                     </c:if>
                     <c:if test="${page != i }">
                        <li class="page-item"><a class="page-link"
                           href="wishlist?p=${i}&kind=${kind}">${i}</a></li>
                     </c:if>
                  </c:forEach>
               <li class="page-item"><c:if test="${end < totalPages }">
                     <a class="page-link" href="wishlist?p=${end+1}">[다음]</a>
                  </c:if></li>
            </ul>
         </nav>

		</c:if>
		<c:if test="${count == 0 }">
	아직 등록된 맛집이 없습니다.
</c:if>
		
<!--  -->
				
	
	</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	//위시리스트 삭제
	$(function(){
		$("a[id]").click(function(){
			let store_no = $(this).attr("id");
			$.ajax({url:"/wishlist/delete", data:"no="+store_no, method:"delete"}
			).done(function(){
				location.href="/wishlist";
			})
			return false;
		})//click
	})//ready


</script>
</body>
</html>