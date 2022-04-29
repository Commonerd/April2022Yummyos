<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>비회원 이용정책</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
h1{
	text-align: center;
}

    .container-fluid>p {
      width : 1200px;
      padding: 20px;
      
}
.con{width : 1200px; margin: 10 auto;} 
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
<div class="container-fluid con" >
  <h1>야미요 비회원 이용자 이용정책</h1>
<br />
제1조 (목적)<br />
이 정책은 주식회사 야미요컴퍼니(이하 &lsquo;당사&rsquo;라 함)가 제공하는 서비스 등의 이용절차, 조건 등 비회원 이용자의 서비스 이용과 관련된 당사와 비회원 이용자 간의 권리 및 의무, 기타 부수사항을 규정함을 목적으로 합니다.<br />
<br />
제2조 (정의)<br />
① &lsquo;회원&rsquo;이라 함은 당사가 제공하는 서비스를 이용하기 위해 계정을 만들고 당사와 이용계약을 체결한 자를 말합니다.<br />
② &lsquo;대규모 이용 등&rsquo;이란 다량 저장, 재가공 등을 위한 자료수집 목적으로 이루어지는 서비스 내용물 이용, 소프트웨어 또는 기계적 방법을 통한 대규모 서비스 내용물 수집, 크롤링&middot;미러링&middot;포크 사이트 등의 운영을 말합니다.<br />
③ &lsquo;비회원&rsquo;이라 함은 &lsquo;회원&rsquo;이 아닌 자로 당사가 제공하는 모든 서비스 내용물(이하 &lsquo;서비스 내용물&rsquo;이라 함)을 단순 열람하는 방식으로 이용하는 자를 말합니다.<br />
④ &lsquo;서비스 내용물&rsquo;이라 함은 당사를 통해 제공되는 모든 내용물을 의미합니다. &lsquo;서비스 내용물&rsquo;에는 회원 내용물, 야미요 내용물과 제3자 내용물이 모두 포함됩니다. &#39;회원 내용물&#39; 이라 함은 평점, 리뷰, 사진, 좋아요, 가고싶다, 체크인, 댓글, 이벤트 참여, 혹은 닉네임 등 프로필에 기재하는 정보 등 회원이 야미요를 이용하면서 등록하거나 그 외 당사 서버에 송신하는 모든 내용물을 의미합니다. &#39;야미요 내용물&#39; 이라 함은 망고픽, 페이스북 포스팅, 기타 온라인 및 오프라인 제작물 등 야미요가 직접 제작하는 내용물 혹은 당사 서버에 송신하거나 페이스북 페이지에 등록하는 모든 내용물을 의미합니다. &#39;제3자 내용물&#39; 이라 함은 회원 혹은 당사에게서 창조되거나 유래되는 내용물은 아니지만 당사 서비스를 통해 회원에게 제공되는 내용물을 의미합니다.<br />
<br />
제3조 (정책의 개정)<br />
① 당사는 법률이나 서비스 변경사항을 반영하기 위한 목적 등으로 이 정책이나 서비스 이용방법, 해당 안내 및 고지사항을 수정할 수 있습니다. 당사가 이 정책을 변경할 경우 당사는 합리적인 방법으로 변경된 내용을 미리 공지합니다.<br />
② 비회원은 변경된 정책의 적용을 거부할 수 있으나, 이 경우 변경된 정책의 적용을 받는 해당 서비스의 제공은 불가능합니다. 변경된 정책이 시행된 이후에도 계속 당사가 제공하는 서비스를 이용하는 경우 비회원은 변경된 정책에 동의한 것으로 봅니다.<br />
<br />
제4조 (저작권)<br />
① 당사를 통해 제공되는 모든 서비스 내용물의 저작권은 이용약관에서 정한 바에 따라 당사와 내용물을 작성한 해당 회원에게 귀속됩니다. 비회원에게는 오직 단순 열람 목적을 위해서만 서비스 내용물이 제공되며, 관련 지적재산권의 보호를 받습니다. 비회원은 당사의 서면 승인 없이 서비스 내용물을 변경, 수집, 복제, 송신, 출판 (온라인, 오프라인 포함), 배포, 방송 기타 방법에 의하여 이용하거나 제3자에게 이용하게 하여서는 아니 됩니다.<br />
② 비회원은 어떠한 경우에도 서비스 내용물에 대한 단순 열람 외의 이용 또는 대규모 이용을 하여서는 아니 됩니다. 이를 위반할 경우 저작권법, 부정경쟁방지 및 영업비밀보호에 관한 법률 등 관련 법률에 따른 민&middot;형사상 조치가 뒤따를 수 있습니다.</p>

</div>
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