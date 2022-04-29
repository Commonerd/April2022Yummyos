<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>문의하기</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
h1{
	text-align: center;
}
p{
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
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/store/list">맛집창고</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="/board/notice/list">공지사항</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 테마맛집기행 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/">미디어픽</a> <a
								class="dropdown-item" href="#">푸드스토리</a>
						</div></li>
				</ul>
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
				<a href="loginform" id="login" class="btn btn-primary"
					style="width: 100px; height: 40px;">로그인</a> <a href="/insert"
					id="join" class="btn btn-primary"
					style="width: 120px; height: 40px;">회원가입</a>
			</div>
		</div>
	</nav>
<body>

<h1>문의하기</h1>

<p>전화번호</p>

 <p>+82-1234-5678</p>

<p>식당등록 및 정보수정 문의</p>

<p>+82-1234-5678</p>

<p>컨텐츠 제휴 및 마케팅 문의</p>

<p>sd3@gmail.com</p>

<p>기타 문의</p>

<p>sd3@gmail.com</p>

<p>주소</p>

<p>서울특별시 종로구 관철동 13-13</p>
<hr>

<p>솔데스크 3조는 항상 열려있습니다.</p>

<p>궁금한 점이 있다면 언제든지 연락주세요!</p>
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