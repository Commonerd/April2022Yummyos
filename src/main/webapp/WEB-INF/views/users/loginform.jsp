<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
</head>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">



 <meta name="viewport" content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">

<style>
.input-box{ position:relative; margin:10px 0; }

.input-box > input{ background:transparent; border:none; border-bottom: solid 1px #ccc; padding:20px 0px 5px 0px; font-size:14pt; width:100%; }

input::placeholder{ color:transparent; }

input:placeholder-shown + label{ color:#aaa; font-size:14pt; top:15px; }

input:focus + label, label{ color:#8aa1a1; font-size:10pt; pointer-events: none; position: absolute; left:0px; top:0px; transition: all 0.2s ease ; -webkit-transition: all 0.2s ease; -moz-transition: all 0.2s ease; -o-transition: all 0.2s ease; }

input:focus, input:not(:placeholder-shown){ border-bottom: solid 1px #8aa1a1; outline:none; }

</style>
<body>
<header> 
<h2>Login</h2> 
</header> 
<form:form action="login" method="POST" modelAttribute="command"> 
<form:errors element="div"/>
<div class="input-box"> 
<input id="id" type="text" name="id" placeholder="아이디"><label for="username">아이디</label></div> 
<div class="input-box"> 
<input id="password" type="password" name="password" placeholder="비밀번호"> 
<label for="password">비밀번호</label> 
</div> 
<button type="button" class="btn btn-danger" value="로그인"><input type="submit" value="로그인"></button>
</form:form>

<button type="button" class="btn btn-danger" value="회원가입"><a href="/insert">회원 가입</a></button>
<button type="button" class="btn btn-danger" value="아이디찾기"><a href="/findId">아이디찾기</a></button>`
<button type="button" class="btn btn-danger" value="비밀번호찾기"><a href="/findPassword">비밀번호찾기</a>


<div id="forgot">비밀번호 찾기</div> 
<input type="submit" value="로그인"> 


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("#login").click(function(){
			let no = $(this).attr("id");
			$.ajax({url:"/boa", method:"post"}
			).done(function(){
				location.href="/board/notice/list";
			})
			return false;
		})//click
</script>



</body>
</html>