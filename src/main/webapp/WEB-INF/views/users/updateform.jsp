<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>정보 수정</title>
<style>

	#input , #result{ display: none;}
	a {
    color: #333;
    text-decoration: none;
}
input {
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-appearance: textfield;
    background-color: white;
    -webkit-rtl-ordering: logical;
    cursor: text;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 0px;
    border-width: 2px;
    border-style: inset;
    border-color: initial;
    border-image: initial;
}
.inner_login {
    position: absolute;
    left: 50%;
    top: 50%;
    margin: -145px 0 0 -200px;
}
.login_tistory{
        position: relative;
        width: 320px;
        margin: 0 auto;
    }
.screen_out {
    position: absolute;
    width: 0;
    height: 0;
    overflow: hidden;
    line-height: 0;
    text-indent: -9999px;    
}
body, button, input, select, td, textarea, th {
    font-size: 13px;
    line-height: 1.5;
    -webkit-font-smoothing: antialiased;
}    
fieldset, img {
    border: 0;
}
.login_tistory .box_login {
    margin: 35px 0 0;
    border: 1px solid #ddd;
    border-radius: 3px;
    background-color: #fff;
    box-sizing: border-box;
}
.login_tistory .inp_text {
    position: relative;
    width: 100%;
    margin: 0;
    padding: 18px 19px 19px;
    box-sizing: border-box;
}
.inp_text input {
    display: block;
    width: 100%;
    height: 200%;
    font-size: 13px;
    color: #000;
    border: none;
    outline: 0;
    -webkit-appearance: none;
    background-color: transparent;
}
.inp_gender{
display: block;
    width: 100%;
    height: 100%;
    font-size: 13px;
    color: #000;
    border: none;
    outline: 0;
    -webkit-appearance: none;
    background-color: white;
    text-align:center;
}
.btn_login {
    margin: 20px 0 0;
    width: 100%;
    height: 48px;
    border-radius: 3px;
    font-size: 16px;
    color: #fff;
    background-color: #000;
}
.btn_idchk {
    margin: 20px 0 0;
    width: 30%;
    height: 40px;
    border-radius: 3px;
    font-size: 16px;
    color: #fff;
    background-color: #E6E6FA;
}

.login_append {
    overflow: hidden;
    padding: 15px 0 0;
}

.login_append .txt_find {
    float: right;
    color: #777;
}
h3 {
    text-align:center;
     font-size: 20px;
}
#mail_ck {
	width: 30%;
	height: 40px;
	margin: 30px 110px;
	text-align:center;
	background-color:black;
	color:white;
}
#id_check {
	width: 30%;
	height: 40px;
	text-align:center;
	background-color:black;
	color:white;
}

}
</style>
</head>
<body>
<div class="inner_login">
    <div class="login_tistory">

<form action="update" method="post" id="updateform">
<input type="hidden" name="_method" value="put">
<h3>${user.id}님의 정보를 수정합니다.</h3>
 <div class="box_login">
                <div class="inp_text">
                <label for="id" class="screen_out">아이디</label> 
                <input type="text" id="id" name="id" value="${user.id}" readonly >
                </div>
                <hr>
                 <div class="inp_text">
                <label for="password" class="screen_out">비밀번호</label>
                <input type="password" id="password" name="password" value="${user.password}" placeholder="비밀번호">
                </div>
                <hr>
                <div class="inp_text">
                <label for="birth" class="screen_out">생년월일</label>
                <input type="text" id="birth" name="birth" value='<fmt:formatDate value="${user.birth}" pattern="yyyyMMdd"/>' placeholder="생년월일 ex)19800101">
                </div>
                <hr>
                <div class="inp_gender">
                <label for="gender" class="screen_out">성별</label>
                <label for="gender1"><input type="radio" id="gender1" name="gender" value="남">&nbsp;남&nbsp;&nbsp;&nbsp;&nbsp;</label> 
                <label for="gender2"><input type="radio" id="gender2" name="gender" value="여">&nbsp;여</label>
                </div>
                <hr>
                <div class="inp_text">
                <label for="email" class="screen_out">이메일</label>
                <input type="email" id="email" name="email" value="${user.email}" placeholder="이메일 ex)OOOO@OOO.com">
                </div>
                <hr>
				<button type="submit" class="btn_login" id="btn_join">수정</button>
</form>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

$(function(){
	$("#btn_join").click(function(){
		alert("수정사항이 성공적으로 반영되었습니다");
	});
});

$(function(){
	$("#updateform").submit(function(){
		if(!$("#password").val()){
			alert("비밀번호를 입력해야 합니다.");
			return false;
		}
	});
})//ready

</script>

</body>
</html>