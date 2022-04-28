<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
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
                text-indent: 0;
                text-shadow: none;
                display: inline-block;
                text-align: start;
                -webkit-appearance: textfield;
                background-color: white;
                -webkit-rtl-ordering: logical;
                cursor: text;
                margin: 0;
                font: 400 13.3333px Arial;
                padding: 1px 0;
                border-width: 2px;
                border-style: inset;
                border-color: initial;
                border-image: initial;
            }
            .inner_findPw {
                position: absolute;
                left: 50%;
                top: 50%;
                margin: -145px 0 0 -160px;
            }
            .inner_updatePw {
           		position: absolute;
                left: 50%;
                top: 50%;
                margin: -145px 0 0 -160px;
            }
            .login_tistory {
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
            body,
            button,
            input,
            select,
            td,
            textarea,
            th {
                font-size: 13px;
                line-height: 1.5;
                -webkit-font-smoothing: antialiased;
            }
            fieldset,
            img {
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
            .btn_findPw {
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
                text-align: center;
                font-size: 20px;
            }
        }
    }
    </style>
</head>
<body>
 <div class="inner_findPw" id="inner_findPw" style="display:block">
        <div class="login_tistory">
            <form method="post" class="form-signin" action="find_password" name="findform">
                <fieldset>
                    <p>비밀번호 찾기</p>
                    <legend class="screen_out">비밀번호 찾기 입력폼</legend>
                    <div class="box_login">
                        <div class="inp_text">
                            <label for="id" class="screen_out">아이디</label>
                            <input type="text" id="id" name="id" class="form-control" placeholder="아이디 입력"/>
                        </div>
                        <div class="inp_text">
                            <label for="birth" class="screen_out">생년월일</label>
                            <input type="text" id="birth" name="birth" placeholder="생년월일 입력 ex) 19800101">
                        </div>
                         <div class="inp_text">
                            <label for="email" class="screen_out">이메일</label>
                            <input type="email" id="email" name="email" placeholder="이메일주소 입력 ex) abc@abc.com">
                        </div>
                    </div>
                    <button type="submit" class="btn_findPw" id="btn_findPw" onclick="move()">찾기</button>
                    <div class="login_append">
                        <span class="txt_find">
                            <a href="/loginform" class="link_find">로그인</a>
                            /
                            <a href="/findId" class="link_find">아이디 찾기</a>
                            /
                            <a href="/insert">회원 가입</a>
                        </span>
                    </div>
                </fieldset>
                </form>
        </div>
     </div>

		<!--아이디와 비밀번호가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<script>
			document.findform.id.value = "";
			document.findform.birth.value = "";
			document.findform.email.value = "";
			alert("일치하는 정보가 없습니다.");
			</script>
		</c:if>

		<!-- 아이디와 비밀번호가 일치할 때  -->
		<c:if test="${check == 0 }">
		<script type="text/javascript"> 
		function move(){ location.href = /updatePw; } 
		</script>
</c:if>
		
		
	
	
</body>
</html>
