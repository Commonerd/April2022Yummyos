<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>

<style>
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
    margin: -145px 0 0 -160px;
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
    height: 100%;
    font-size: 13px;
    color: #000;
    border: none;
    outline: 0;
    -webkit-appearance: none;
    background-color: transparent;
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
.login_append {
    overflow: hidden;
    padding: 15px 0 0;
}

.login_append .txt_find {
    float: right;
    color: #777;
}
p {
    text-align:center;
     font-size: 20px;
}

}}
</style>

</head>


<div class="inner_login">
    <div class="login_tistory">
	 <form:form method="post" id="login" action="login" modelAttribute="command">
 		<form:errors element="div"/>
            <input type="hidden" name="redirectUrl" value="https://blogpack.tistory.com/manage">
            <fieldset>
           <p>아이디와 비밀번호를 입력해주세요</p>
            <legend class="screen_out">로그인 정보 입력폼</legend>
            <div class="box_login">
                <div class="inp_text">
                <label for="id" class="screen_out">아이디</label>
                 <input type="text" id="id" name="id" placeholder="ID" >
                </div>
                <div class="inp_text">
                <label for="password" class="screen_out">비밀번호</label>
                <input type="password" id="password" name="password" placeholder="Password" >
                </div>
            </div>
            <button type="submit" class="btn_login">로그인</button>
            <div class="login_append">
                <span class="txt_find">
                
                <a href="/findId" class="link_find">아이디</a>
                    / 
                <a href="/findPassword" class="link_find">비밀번호 찾기</a>
                	/
                <a href="/insert">회원 가입</a>
                </span>
            </div>
            
            </fieldset>
        </form:form>
        
    </div>
</div>

</body>
</html>