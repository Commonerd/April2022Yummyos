<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>




<!--  nList begin end count pageNum totalPages -->
<title>글 목록</title>
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
   float: left;
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