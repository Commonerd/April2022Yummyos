<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>main</title>
</head>

<body>
<form action="kakaologin" method="post" id="kakaologin">
<h3>카카오로 로그인하셨습니다. 야미요로 맛밥하세요!!</h3>


<a href="logout">로그아웃</a>
<a href="board/list">게시판</a>

  <h6>카카오톡 로그인 성공 화면</h6>
  <hr />
  <div id="k_image" style="text-align:center"><img></img</div>
  <div id="k_id" style="text-align:center"></div>
  <div id="k_email" style="text-align:center"></div>
  <div id="k_nickname" style="text-align:center"></div>

  <script>			
  if ('${k_userInfo}') {

    $("#k_id").text("아이디 : " + '${id}');
    $("#k_email").text("이메일 : " + '${email}');
    $("#k_nickname").text("이름 : " + '${nickname}');

    imageURL = ${image};

    $("#k_image").children("img").attr("src", imageURL);
  }
  </script>


</form>
</body>
</html>