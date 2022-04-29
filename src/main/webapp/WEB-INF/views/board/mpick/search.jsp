<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>검색 글 목록</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>

<style>
#board-list { .text-dark
   
}

#center {
   width: 1500px;
   margin-left: auto;
   margin-right: auto;
}

table {
   border: 1px solid black;
   width: 700px;
   border-collapse: collapse;
}

a {
   margin: 10px auto;
}

#page {
	text-align: center;
}
@mixin pagination-size($padding-y, $padding-x, $font-size, $border-radius) {
  .page-link {
    padding: $padding-y $padding-x;
    @include font-size($font-size);
  }

  .page-item {
    @if $pagination-margin-start == (-$pagination-border-width) {
      &:first-child {
        .page-link {
          @include border-start-radius($border-radius);
        }
      }

      &:last-child {
        .page-link {
          @include border-end-radius($border-radius);
        }
      }
    } @else {
      //Add border-radius to all pageLinks in case they have left margin
      .page-link {
        @include border-radius($border-radius);
      }
    }
  }
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
							<a href="/search/search?search=${search}"></a>
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
	<div id="center">
		<h1>${search}로 검색한 결과입니다.</h1>
		
		<div align="right">
			<a href="/main">main</a><a href="list">새글 등록</a>
		</div>
<div class="container">
		<c:if test="${count != 0 }">
			<table class="table table-striped table-hover">
			<div class="row">
			
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
	
				<c:forEach items="${mList}" var="mpick">
				
					<tr>
						<td><a href="content/${mpick.no}">${mpick.title}</a></td>
						<td>${mpick.id}</td>
						<td><fmt:formatDate value="${mpick.regdate }" dateStyle="short" /></td>
						<td>${mpick.readcount }</td>
					</tr>
				</c:forEach>
				</div>
			</table>
	<div id="page">
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item disabled">
				<c:if test="${begin > pageNum }">
					<a class="page-link" href="search?p=${begin-1}&search=${search}&searchn=${searchn}">[이전]</a>
				</c:if></li>
				<li class="page-item active" aria-current="page">
				<c:forEach begin="${begin }" end="${end}" var="i">
					<c:if test="${page == i }">
					<li class="page-item active">
					<a class="page-link" href="search?p=${i}&search=${search}&searchn=${searchn}">${i}</a></li>
					</c:if>
					<c:if test="${page != i }">
						<li class="page-item">
						<a class="page-link" href="search?p=${i}&search=${search}">${i}</a></li>
							</c:if>
				</c:forEach>
				<li class="page-item">
				<c:if test="${end < totalPages }">
					<a class="page-link" href="search?p=${end+1}&search=${search}&searchn=${searchn}">[다음]</a>
				</c:if></li>
			</ul>
		</nav>
	</div>	
</c:if>
</div>
		<c:if test="${count == 0 }">
	검색 조건에 맞는 글이 없습니다.
</c:if>


<div id="search" align="center">
<form action="search">
<select name="searchn">
<option value="0">제목</option>
<option value="1">내용</option>
<option value="2">작성자</option>
</select>
<input type="text" name="search" size="15" maxlength="50" /> 
<input type="submit" value="검색" />
</form>	
	</div>
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