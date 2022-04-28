<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>회원 탈퇴</title>
</head>
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
            .inner_login {
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
                text-align: center;
                font-size: 20px;
            }
        }
    }
    </style>
    
<body>
<div class="inner_login">
        <div class="login_tistory">
        <form method="post" onsubmit="return checkVal()" action="/delete">
         <fieldset>
		<h3> 회원을 탈퇴하려면 비밀번호를 입력해주세요</h3>
			<div class="box_login">
                        <div class="inp_text">
                            <label for="password" class="screen_out">비밀번호</label>
                            <input type="password" id="password" name="formpw" class="form-control" placeholder="비밀번호를 입력해주세요"/>
                        </div>
                        <button type="submit" class="btn_login">탈퇴</button>
					<div class="login_append">
                        <span class="txt_find">
                            <a href="/" class="link_find">메인으로 돌아가기</a>
</form>
<script>
	function checkVal(){
		let pw = document.querySelector("#password").value;
		if(!pw){
			alert("비밀번호 입력하세요");
			return false;
		} else {
			alert("성공적으로 탈퇴되었습니다");
		}
	}

</script>

</body>
</html>