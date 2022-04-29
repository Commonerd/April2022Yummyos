<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판 새 글 작성</title>


<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
   crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
   integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
   integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
   integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
   crossorigin="anonymous"></script>

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
      <a class="navbar-brand" href="/">메인</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#navbarSupportedContent"
         aria-controls="navbarSupportedContent" aria-expanded="false"
         aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
         <ul class="navbar-nav ">
            <li class="nav-item active"><a class="nav-link"
               href="/details/ladder">오늘 뭐먹지?<span class="sr-only">(current)</span></a>
            </li>
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
            <form class="form-inline my-2 my-lg-0" action="/all/search">
               <c:forEach items="${search}" var="search">
                  <a href="/all/search?search=${search}">${search}</a>
               </c:forEach>
               <br> <input name="search" id="search" type="search"
                  style="width: 500px;" class="form-control mr-sm-2"
                  placeholder="원하시는 메뉴를 입력해주세요" aria-label="Search"> <input
                  type="submit" value="검색"
                  class="btn btn-outline-success my-3 my-sm-0"
                  style="color: black; border-color: black;" aria-label="Search">
            </form>
         </div>
         <ul class="navbar-nav ml-auto">
            <li><a href="loginform" id="login" class="btn btn-primary"
               style="width: 100px; height: 40px;">로그인</a> <a href="/insert"
               id="join" class="btn btn-primary"
               style="width: 120px; height: 40px;">회원가입</a>
         </ul>
      </div>
   </nav>


   <c:if test="${ user.id != null }">
      <a>${user.id}님</a>
      <a href="/logout">로그아웃</a>
   </c:if>
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
                        style="background-color: #eeeeee; text-align: center;">공지사항을 작성해주세요.
                        </th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td><input type="text" class="form-control"
                        placeholder="글 제목" name="Title" maxlength="50"
                        style="width: 1000px" /></td>
                  </tr>
                  <tr align="left">

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







   <%-- 
<form method="post" id="writeform" action="write" enctype="multipart/form-data">
   <table boarder="1">
   <tr>  
         <td class="orange">제목</td>
         <td><input name="title"/></td>
      </tr>
      <tr>
         <td class="orange">작성자</td>
         <td><input name="id" value="${user.id }" readonly></td>
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
      <tr><td>사진</td><td> <input type="file" name="file"></td></tr>
      <tr>
         <td colspan="2" align="center">
            <input type="button" id="save" value="새글 등록"> 
         </td>
      </tr>
   </table>

</form> --%>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js"
      charset="utf-8"></script>
   <script>
      let oEditors = []

      smartEditor = function() {
         console.log("Naver SmartEditor")
         nhn.husky.EZCreator.createInIFrame({
            oAppRef : oEditors,
            elPlaceHolder : "editorTxt",
            sSkinURI : "/smarteditor/SmartEditor2Skin.html",
            fCreator : "createSEditor2"
         })
      }

      $(document).ready(
            function() {

               smartEditor()

               $("#save").click(
                     function() {
                        oEditors.getById["editorTxt"].exec(
                              "UPDATE_CONTENTS_FIELD", []);
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