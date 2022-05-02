<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>SERACH LIST</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"
	integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="
	crossorigin="anonymous"></script>

<style>
.selector-for-some-widget {
	box-sizing: content-box;
}

#center {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

#page {
	text-align: center;
}

h3 {
	text-align: center;
}

#kind {
	width: 200px;
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

.container {
	width: 1200px;
	padding: 20px;

}

/* .top {
	display: flex;
	position: fixed;
	text-align: center;
} */
.showstep1 {
	max-height: 300px;
	overflow: hidden;
}

.showstep2 {
	max-height: 600px;
	overflow: hidden;
}

.hide {
	display: none;
}

.btn_open {
	text-align: center;
}

.btn_close hide {
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
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> ${user.id}님
							환영합니다 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="/wishlist">위시리스트</a></li>
							<li><a class="dropdown-item" href="/update">회원 정보 수정</a></li>
							<%-- 	<c:if test="${ user.role == 'role_admin'}">
								<li><a class="dropdown-item" href="/board/mpick/write">새글
										등록</a></li>
							</c:if> --%>
							<li><a class="dropdown-item" href="/logout">로그아웃</a></li>
						</ul></li>
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

	<br>
	<br>

	<div id="center">
		<h1 align="center" class="fw-bold">[ ${search} ] 검색 결과</h1>
		<div class="top">
			<div class="quickmenu" align="center">
				<br>
				<nav id="TableOfContents">
					<a href="#store" type="button" class="btn btn-outline-secondary">STORE</a>
					<a href="#fstory" type="button" class="btn btn-outline-secondary">FSTORY</a>
					<a href="#mpick" type="button" class="btn btn-outline-secondary">MPICK</a>
				</nav>
			</div>
		</div>
		<br>

		<div id="store">
			<h3>STORE</h3>
			<br>
			<div class="detailinfo showstep1">
				<div class="container">
					<div class="row">
						<c:forEach items="${sList}" var="store">
							<div class="col-md-4 mb-3">
								<div class="card" style="width: 100%">
									<img src="/image/${store.image }" class="card-img-top" alt="">
									<div class="card-body">
										<h5 class="card-title">${ store.category }</h5>
										<p class="count">${store.view_count}</p>
										<p class="likecount">${ allCount }</p>
										<a href="../store/content/${store.no }"
											class="btn btn-primary">${store.name }</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<br>
			<a href="더보기" class="btn_open">더보기</a>
			 <a href="감추기"
				class="btn_close hide">감추기</a>
		</div>

		<br> <br> <br> <br> <br> <br> <br>


		<div id="fstory">
			<h3>FSTORY</h3>
			<br>
			<div class="detailinfo showstep1">
				<div class="content">
					<!-- "실제 컨텐츠 표시 영역" -->
					<div class="container">
						<div class="row">
							<c:forEach items="${fList}" var="fstory">
								<div class="col-md-4 mb-3">
									<div class="card" style="width: 100%">
										<img src="/fstory_images/${fstory.image}" class="card-img-top"
											alt="...">
										<div class="card-body">
											<h5 class="card-title">
												<a href="content/${fstory.no}">${fstory.title}의 유래</a>
											</h5>
											<p class="count">조회수 : ${fstory.readcount}</p>
											<a href="content/${fstory.no}">${fstory.title}</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

			</div>
		<br>
			<a href="더보기" class="btn_open">더보기</a> <a href="감추기"
				class="btn_close hide">감추기</a>
		</div>


		<br> <br> <br> <br> <br> <br> <br>


		<div id="mpick">
			<h3>MPICK</h3>
			<br>
			<div class="detailinfo showstep1">
				<div class="content">
					<!-- "실제 컨텐츠 표시 영역" -->
					<div class="container">
						<div class="row">
							<c:forEach items="${mList}" var="mpick">
								<div class="col-md-4 mb-3">
									<div class="card" style="width: 100%">
										<img src="../image/${mpick.image }" class="card-img-top"
											alt="">
										<div class="card-body">
											<h5 class="card-title">${mpick.title }</h5>
											<p class="card-text">${mpick.title }</p>
											<p class="card-count">조회수 ${mpick.readcount}</p>
											<a href="../board/mpick/content/${mpick.no}"
												class="btn btn-secondary">상세정보</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			<br>
				<a href="#" class="btn_open">더보기</a> <a href="#"
					class="btn_close hide">감추기</a>
			</div>
		</div>

	</div>

	<script type="text/javascript">
		document
				.addEventListener(
						'DOMContentLoaded',
						function() { //DOM 생성 후 이벤트 리스너 등록
							//더보기 버튼 이벤트 리스너
							document
									.querySelector('.btn_open')
									.addEventListener(
											'click',
											function(e) {

												let classList = document
														.querySelector('.detailinfo').classList; // 더보기 프레임의 클래스 정보 얻기
												let contentHeight = document
														.querySelector('.detailinfo > .content').offsetHeight; //컨텐츠 높이 얻기

												// 2단계이면 전체보기로
												if (classList
														.contains('showstep2')) {
													classList
															.remove('showstep2');
												}
												// 1단계이면 2단계로
												if (classList
														.contains('showstep1')) {
													classList
															.remove('showstep1');
													if (contentHeight > 600) {
														classList
																.add('showstep2');
													} else {
														document
																.querySelector('.btn_open').classList
																.add('hide');
													}
												}
												//전체보기시 더보기 버튼 감추기 & 감추기 버튼 표시
												if (!classList
														.contains('showstep1')
														&& !classList
																.contains('showstep2')) {
													e.target.classList
															.add('hide');
													document
															.querySelector('.btn_close').classList
															.remove('hide');

												}

											});
						});
	</script>
	<script>
		// 감추기 버튼 이벤트 리스너
		document.querySelector('.btn_close').addEventListener(
				'click',
				function(e) {
					e.target.classList.add('hide');
					document.querySelector('.btn_open').classList
							.remove('hide'); // 더보기 버튼 감춤
					document.querySelector('.detailinfo').classList
							.add('showstep1'); // 초기 감춤 상태로 복귀
				});
	</script>
	<script>
		//컨텐츠 로딩 완료 후 높이 기준으로 클래스 재처리
		window.addEventListener('load', function() {
			let contentHeight = document
					.querySelector('.detailinfo > .content').offsetHeight; //컨텐츠 높이 얻기
			if (contentHeight <= 300) {
				document.querySelector('.detailinfo').classList
						.remove('showstep1'); // 초기값보다 작으면 전체 컨텐츠 표시
				document.querySelector('.btn_open').classList.add('hide'); // 버튼 감춤
			}
		});
	</script>

	<br>
	<br>
	<br>
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
				<p class="text-muted">&copy; 2022 YUMMYO Project</p>
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