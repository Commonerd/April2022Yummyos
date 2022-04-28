<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
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


=======
>>>>>>> refs/heads/master

<!--  nList begin end count pageNum totalPages -->
<title>글 목록</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


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

<<<<<<< HEAD
=======
th {border: 1px solid black;
	background-color: gold;
	width: 150px;
}
td{border: 1px solid black;}
>>>>>>> refs/heads/master
a {
   margin: 10px auto;
}

#page {
   float: left;
}
</style>
</head>
<body>
<<<<<<< HEAD
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
					<li class="nav-item"><a class="nav-link" href="/store/list">맛집창고</a></li>
					<li class="nav-item"><a class="nav-link" href="/board/notice/list">공지사항</a></li>
					<li class="nav-item"><a class="nav-link" href="/board/mpick/list">미디어픽</a></li>
					<li class="nav-item"><a class="nav-link" href="/board/fstory/list">푸드스토리</a></li>
					
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
=======

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



<button type="button" class="btn btn-primary" ><a href="/board/notice">공지사항</a></button>
<button type="button" class="btn btn-secondary"><a href="/ladder">오늘 뭐먹지?</a></button>
<button type="button" class="btn btn-success"><a href="/store/list">맛집리스트</a></button>
<button type="button" class="btn btn-info"><a href="/board/mpick">미디어픽</a></button>
<button type="button" class="btn btn-warning"><a href="/board/fstory">푸드스토리</a></button>
<button type="button" class="btn btn-danger">Danger</button>
<button type="button" class="btn btn-dark">
	<c:if test="${ user.id != null }">
		<a>${user.id}님</a>
		<a href="/logout">로그아웃</a>
		</c:if>
		<c:if test="${ user.id == null }">
		<a href="/login">로그인</a>
		<a href="/insert">회원가입</a>
		</c:if>
		</button>



	<div id="center">
		<h1>공지사항</h1>
		<div align="right">
		
			<a href="/main">main</a> 

			<c:if test="${ user.role == 'role_admin' }">
			<a href="write">새글 등록</a>
			</c:if>
		</div>

		<c:if test="${count != 0 }">
			<table>
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<c:forEach items="${nList}" var="notice">
					<tr>
						<td><a href ="content/${notice.no}">${notice.title}</a></td>
						<td>${notice.id }</td>
						<td><fmt:formatDate value="${notice.regdate}" dateStyle="short"/> </td>
						<td>${notice.readcount}</td>
					</tr>
				</c:forEach>
			</table>
			<div id="page">
				<c:if test="${begin > pageNum }">
					<a href="list?p=${begin-1 }">[이전]</a>
				</c:if>
				<c:forEach begin="${begin }" end="${end}" var="i">
					<a href="list?p=${i}">${i}</a>
				</c:forEach>
				<c:if test="${end < totalPages }">
					<a href="list?p=${end+1}">[다음]</a>
				</c:if>
>>>>>>> refs/heads/master
			</div>
		</div>
	</nav>
   <c:if test="${ user.id != null }">
      <a>${user.id}님</a>
      <a href="/logout">로그아웃</a>
   </c:if>
   <c:if test="${ user.id == null }">
      <a href="/login">로그인</a>
      <a href="/insert">회원가입</a>
   </c:if>
   <div id="center">
      <section class="notice">
         <div class="page-title">
            <div class="container">
               <header>
                  <h3>공지사항</h3>
               </header>
            </div>

         </div>


         <c:if test="${count != 0 }">
            <div id="board-list">

               <div class="container">
                  <div align="right">

                     <a href="/main" class="btn btn-light">main</a>

                     <c:if test="${ user.role == 'role_admin' }">
                        <a href="write" class="btn btn-light">새글 등록</a>

                     </c:if>
                  </div>
                  <table class="table table-striped table-hover">
                     <thead>
                        <tr>
                           <th>제목</th>
                           <th>작성자</th>
                           <th>날짜</th>
                           <th>조회수</th>
                        </tr>
                     </thead>
                     <tbody>
                        <c:forEach items="${nList}" var="notice">
                           <tr>
                              <td><a href="content/ ${notice.no}">${notice.title}</a></td>
                              <td>${notice.id }</td>
                              <td><fmt:formatDate value="${notice.regdate}"
                                    dateStyle="short" /></td>
                              <td>${notice.readcount}</td>
                           </tr>
                        </c:forEach>
                     </tbody>

                  </table>
                  <div>
                     <div id="page" >

                        <nav aria-label="Page navigation example">
                           <ul class="pagination justify-content-center">
                              <c:if test="${begin > pageNum }">
                                 <li class="page-item"><a class="page-link"
                                    href="list?p=${begin-1 }">Previous</a></li>
                              </c:if>
                              <c:forEach begin="${begin }" end="${end}" var="i">
                                 <li class="page-item"><a class="page-link"
                                    href="list?p=${i}">${i}</a></li>
                              </c:forEach>
                              <c:if test="${end < totalPages }">
                                 <li class="page-item"><a class="page-link"
                                    href="list?p=${end+1}">Next</a></li>
                              </c:if>
                           </ul>
                        </nav>

                     </div>
                     <div id="search">
                        <form action="search" style = "float:right;">
                           <select name="searchn">
                              <option value="0">제목</option>
                              <!-- <option value="1">내용</option> 윤정화씨의 해시태그로 구현할 부분.-->
                              <option value="2">작성자</option>
                           </select> <input type="text" name="search" size="15" maxlength="50" />
                           <input type="submit" value="검색" />
                        </form>
                     </div>

                  </div>
               </div>
            </div>
         </c:if>
         <c:if test="${count == 0 }">
   아직 입력한 글이 없습니다.
</c:if>
   </div>

<<<<<<< HEAD




=======
	</div>
		<div id="search" align="center">
<form action="search">
<select name="searchn">
<option value="0">제목</option>
<option value="2">작성자</option>
</select>
<input type="text" name="search" size="15" maxlength="50" /> 
<input type="submit" value="검색" />
</form>	
</div>
>>>>>>> refs/heads/master
</body>
</html>