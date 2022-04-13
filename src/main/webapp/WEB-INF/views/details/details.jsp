<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상세 페이지</title>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body, ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

a {
	text-decoration: none;
	color: inherit;
}

.menu-box {
	text-align: center;
}

.menu-box>ul {
	display: inline-block;
	background-color: #dfdfdf;
	border-radius: 10px;
	padding: 0 15px;
}

.menu-box>ul>li {
	display: inline-block;
}

.menu-box>ul>li>a {
	display: block;
	padding: 20px;
}

.menu-box>ul>li:hover>a {
	background-color: black;
	color: white;
}

h1 {
	background-positon: center;
	width: 300px;
	height: 100px;
	text-indent: -9999px;
	float: left;
}
</style>
</head>
<body>

	<hl>야미요</hl>


	<nav class="menu-box">
		<ul>
			<li><a href="ff">내가 골라줄께</a></li>
			<li><a href="ff">맛집찾기</a></li>
			<li><a href="ff">테마</a></li>
		</ul>
	</nav>

	<li><a href="views/review/review">리뷰쓰기</a>
	<li>
	<li><a href="views/review/jjim">찜</a>
	<li>

		<h2>최고 평점맛집</h2>
		<h4>최고의 맛집을 찾아라!</h4>

		<ul>
			<li><a href="views/details/details#address">주소</a>
			<li><a href="views/details/details#Kinds">음식종류</a>
			<li><a href="views/details/details#kinds">가격</a>
			<li><a href="views/details/details#parking">주차</a>
			<li><a href="views/details/details#Opening">영업시간</a>
			<li><a href="views/details/details#break_time">쉬는시간</a>
			<li><a href="views/details/details">휴일</a>
			<li><a href="views/details/details">웹사이트</a>
			<li><a href="views/details/details">메뉴</a>
			<li><a href="views/details/details">식당소개</a>
		</ul>

		<form>
			<p>
				<textarea cols="50" rows="10"></textarea>
			</p>
			<p>
				<button type="button" onclick="location.href='fff' ">리뷰등록</button>
				<button type="button" onclick="location.href='fff' ">취소</button>
			</p>
		</form>
</body>
</html>