<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>미디어픽 새글 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>

<style>
.selector-for-some-widget {
   box-sizing: content-box;
}

<
style>.orange {
   background-color: orange;
   width: 50px;
}

table {
   border-collapse: collapse;
   width: 800px;
}

#center {
   width: 700px;
   margin-left: auto;
   margin-right: auto;
}

#page {
   text-align: center;
}

h1 {
   text-align: center; # kind { width : 200px;
   height: 30px;
   padding-left: 10px;
   font-size: 18px;
   color: #006fff;
   border: 1px solid #006fff;
   border-radius: 3px;
   position: relative;
   left: 205px;
   bottom: 10px;
}

p.count {
   color: gray;
   font-size: 0.8em;
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
						<a href="/search/search?search=${search}">${search}</a>
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
			<a href="/loginform" id="login" class="btn btn-primary"
				style="width: 100px; height: 35px;">로그인</a>
			<a href="/insert" id="join" class="btn btn-primary"
				style="width: 120px; height: 35px;">회원가입</a>
		</c:if>
		
	</nav>
	
   <c:if test="${ user.id == null }">
      <a href="/login">로그인</a>
      <a href="/insert"></a>
   </c:if>
   
      <div class="container" align="center">
      <div class="row">
         <form method="post" id="writeform" action="write"
            enctype="multipart/form-data">
            <table class="table table-striped"
               style="text-align: center; float: center; width: 700px; border: 1px solid #dddddd">
               <thead>
                  <tr>
                     <th colspan="2"
                        style="background-color: #eeeeee; text-align: center;">미디어픽을 작성해주세요</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td><input type="text" class="form-control"
                        placeholder="글 제목" name="Title" maxlength="50"
                        style="width: 1000px" /></td>
                  </tr>
                  <tr align="left">

                     <td>
                     </td>
                  </tr>
                  <tr>
                     <td><div id="smarteditor">
                           <textarea name="content" id="editorTxt" rows="20" cols="10"
                              placeholder="내용을 입력해주세요" style="width: 1000px"></textarea>
                        </div></td>
                  </tr>
               </tbody>
            </table>
            <br> 작성자 : <input name="id" value="${user.id }" readonly>
            <input type="button" id="save" value="새글 등록">

         </form>
      </div>
   </div>
   
   
<%-- <form method="post" id="writeform" action="write" enctype="multipart/form-data">
	<table border="1">
		<tr>  
			<td class="orange">제목</td>
			<td><input name="title"/></td>
		</tr>
		<tr>
			<td class="orange">작성자</td>
			<td><input name="id" value="${user.id}" readonly></td>
		</tr>
		<tr>  
			<td class="orange">세부정보</td>
			<td><input name="stitle"/></td>
		</tr>
		<tr>
			<td class="orange">내용</td>
			<td><div id="smarteditor">
        	<textarea name="content" id="editorTxt" 
                  rows="20" cols="10" 
                  placeholder="내용을 입력해주세요"
                  style="width: 700px"></textarea>
      </div></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" id="save" value="새글 등록"> 
			</td>
		</tr>
	</table>

</form> --%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script>
     let oEditors = []

    smartEditor = function() {
      console.log("Naver SmartEditor")
      nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "editorTxt",
        sSkinURI: "/smarteditor/SmartEditor2Skin.html",
        fCreator: "createSEditor2"
      })
    } 

    $(document).ready(function() {
  
      smartEditor() 
      
      $("#save").click(function(){
    	  oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", []);
    	  $("#writeform").submit();
      });
      
    })
  </script>
     <hr>
   <br>
   <br>
   <br>
  
	<div class="container">
		<footer class="row row-cols-5 py-5 my-5 border-top">
			<div class="col">
				<a href="/"
					class="d-flex align-items-center mb-3 link-dark text-decoration-none">
					<svg class="bi me-2" width="40" height="32">
						<use xlink:href="#bootstrap" /></svg>
				</a>
				<p class="text-muted">&copy; 2022 YUMMYO Project </p>
			</div>

			<div class="col"></div>
			<div class="col">
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="/footer/tservice"
						class="nav-link p-0 text-muted">이용약관</a></li>
					<li class="nav-item mb-2"><a href="/footer/nmembers"
						class="nav-link p-0 text-muted">비회원 이용정책</a></li>
					<li class="nav-item mb-2"><a href="/footer/gps"
						class="nav-link p-0 text-muted">위치기반 서비스 이용약관</a></li>
				</ul>
			</div>

			<div class="col">				
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="/footer/inquiry"
						class="nav-link p-0 text-muted">문의하기</a></li>
					<li class="nav-item mb-2"><a href="/footer/privacy"
						class="nav-link p-0 text-muted">개인정보 처리방침</a></li>
				</ul>
			</div>
		</footer>
	</div>
	<div class="b-example-divider"></div>
  
</body>
</html>	