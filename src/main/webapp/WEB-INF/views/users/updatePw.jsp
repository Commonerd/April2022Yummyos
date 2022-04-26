<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
                text-align: center;
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
<form method="post" class="form-signin" action="update_password" name="findform">
<div class="inner_updatePw" id="inner_updatePw">
        <div class="login_tistory">
        <fieldset>
			<p>비밀번호를 변경해주세요</p>
                    <legend class="screen_out">비밀번호 변경 입력폼</legend>
                    <div class="inp_text">
					<input type="hidden" id="id" name="updateid" value="${updateid }">
					<input type="password" id="password" name="password" class="form-control" placeholder="새로운 비밀번호를 입력해주세요"/>
					</div>
                     <div class="inp_text">
					<input type="password" id="confirmpassword" name="confirmpassword" class="form-control" placeholder="비밀번호를 한 번 더 입력해주세요"/>
					</div>
					
					<input type="button" class="btn_findPw" onclick="updatePassword()" value="비밀번호변경">
					</fieldset>
					</div>
					</div>
					</form>
					<script type="text/javascript">
		function updatePassword(){
			if(document.findform.password.value==""){	
				alert("비밀번호를 입력해주세요.");			
				document.findform.password.focus();
			} else if(document.findform.password.value != document.findform.confirmpassword.value){
				alert("비밀번호가 일치하지 않습니다.");
				document.findform.confirmpassword.focus();
			} else {
				document.findform.action="update_password";
				alert("비밀번호가 성공적으로 변경되었습니다")
				document.findform.submit();
			}
		}
	</script>

</body>
</html>