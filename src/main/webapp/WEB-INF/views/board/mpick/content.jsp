<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>글 상세보기</title>
<title>당신의 식사를 책임질, 야미요</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>

<style>
.container-fluid>p {
      width : 1200px;
      padding: 20px;
      
}

.comm{
	width : 1200px;		
	margin: auto;
}

table, tr, td{
 border:none;
}
h1{
	text-align:center;
	margin-top:50px;
	margin-bottom:50px;
	
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
			<a href="/login" class="btn btn-primary"
				style="width: 100px; height: 35px;">로그인</a>
			<a href="/insert" class="btn btn-primary"
				style="width: 120px; height: 35px;">회원가입</a>
		</c:if>
		
	</nav>
	
	
	<div style="text-align: right; margin-right: 150px;">
	</div>
	<div style="text-align: right; margin-right: 150px;">
		<c:if test="${ user.role == 'role_admin' }">
	<a class="udm" href="/board/mpick/update/${dto.no}">글 수정 </a> 
	<a class="udm" id="${dto.no}" href="#">글 삭제</a>
	</c:if>
	<a class="udm" href="../list">목록 이동</a> 	
	</div>	
		
		<h1  class="fw-bold">Media Pick</h1>	
<table border="1" class="table table-borderless">	
	<tr class="thead-dark"><td align="center"><font size="5">${dto.title} | 조회수 ${dto.readcount}</font></td>
	<tr><td align="center"><font size="4">${dto.stitle}</font></td>
	<tr><td align="center">작성자 : ${dto.id}</td>	
	<tr><td align="center">등록일 <fmt:formatDate value="${dto.regdate }" dateStyle="long"/></td>
	<tr><td align="center"></td>
	<tr><td align="center">${dto.content}</td>
	
</table>
<!--  cList -->
<hr style="margin: auto; width: 90%;">


<div class="comm">
<div class="container-fluid con">
	<h3>댓글 등록</h3>	
	<input name="content" id="content"><button id="add">등록</button>
	</div>
	
	<c:forEach items="${cList}" var="mp_comm">
		<div>${mp_comm.id} / <fmt:formatDate value="${mp_comm.regdate }" dateStyle="short"/></div>
		<div>${mp_comm.content} 
		<c:if test="${mp_comm.id == user.id }">
		<button class="dbtn" id="${mp_comm.mp_cno}">삭제</button>
		</c:if>
		</div>
		<hr style="width: 60%;">
	</c:forEach>
	
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("a[id]").click(function(){
			let mp_no = $(this).attr("id");
			$.ajax({url:"/board/mpick/delete", data:"no="+mp_no, method:"delete"}
			).done(function(){
				location.href="/board/mpick/list";
			})
			return false;
		})//click
		
		$("#add").click(function(){
			let id = '${user.id}';
			let content = $("#content").val();
			let mp_no = ${dto.no};
			
			$.ajax({url:"/mp_comm/insert",
					data:"mp_no="+mp_no+"&id="+id+"&content="+content,
					method:"post"
			}).done(function(){
					location.reload();		
				});
			
		})//click
		$(".dbtn").click(function(){
			let mp_cno = $(this).attr("id");
			$.ajax({url:"/mp_comm/delete/"+mp_cno,
				method:"delete"
		}).done(function(){
				location.reload();		
			});
			
		})//click
	})//ready

</script>
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
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-muted">개인정보 처리방침</a></li>
				</ul>
			</div>
		</footer>
	</div>
	<div class="b-example-divider"></div>
</body>
</html>