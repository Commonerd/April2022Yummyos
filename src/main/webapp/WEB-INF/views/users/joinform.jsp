<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 폼</title>
</head>
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
<body>

<div class="inner_login">
    <div class="login_tistory">
<form action="insert" method="post" id="joinform">
<input type="hidden" name="_method">
	<h3>야미요 회원 가입을 환영합니다. </h3>
	 <div class="box_login">
                <div class="inp_text">
                <label for="id" class="screen_out">아이디</label> 
                <input type="text" id="id" name="id" placeholder="아이디" >
                </div>
                <hr>
                <div class="inp_text">
                <input type="button" id="id_check" value="ID중복확인"><span id="id_msg"></span>
                </div>
                <hr>
                 <div class="inp_text">
                <label for="password" class="screen_out">비밀번호</label>
                <input type="password" id="password" name="password" placeholder="비밀번호" >
                </div>
                <hr>
                <div class="inp_text">
                <label for="birth" class="screen_out">생년월일</label>
                <input type="text" id="birth" name="birth" placeholder="생년월일 ex)19800101" >
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
                <input type="email" id="email" name="email" placeholder="이메일 ex)OOOO@OOO.com" >
                </div>
                <hr>
                <div id="emailresult"></div>
				<input type="button" id="mail_ck" value="메일 인증" style="margin:10px 10px 5px 20px";>
		<div id="input"><input id="ck_num"> <input type="button" id="ck_b" value="인증 확인" style="background-color:black; color:white;"></div>
		<div id="result"></div>
	<button type="submit" class="btn_login" id="btn_join">가입</button>
</form>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

$(function(){
	$("#btn_join").click(function(){
		alert("회원가입을 축하합니다");
	});
});

let num="";
$(function(){
	$("#id_check").click(function(){
		let id = $("#id").val();
		if(!id){
			$("#id_msg").html("아이디를 입력하세요")
			return false;
		}
		$.ajax({url:"/idCheck", data:"id="+id, datatype:"text"}
		).done(function(data){
			
			if(data == ""){
				$("#id_msg").html("사용할 수 있는 아이디 입니다.");
				$("#id_msg").append("<input type='hidden' id='id_ck' value='1'>");
			}else{
				$("#id_msg").html("이미 사용중인 아이디 입니다.");
			}
		})
	});//아이디 중복 확인 click
	
	$("#mail_ck").click(function(){
			 let email = $("#email").val();
			if(!email){
					$("#result").css("display","block").html("메일 주소를 입력하세요");		
					return false;
				} 
		 $.ajax({url:"/send",
			 	data:"emailAddress="+email,
				dataType:"json"}
			).done(function(data){
				if(eval(data[1])){
					num = data[0];
					alert("메일이 전송되었습니다. 인증번호를 입력하세요.")
					$("#input,#result").css("display","block");
				}
			}); 
		}) 
		
$("#ck_b").click(function(){
			let ck_num = $("#ck_num").val();
			if(ck_num == num){
				$("#result").html("인증이 확인되었습니다.")
				$("#result").append("<input type='hidden' id='ck' value='1'>");
			}else{
				$("#result").html("인증 실패했습니다. 다시 확인하세요.");
			}
		})
	
	$("#joinform").submit(function(){	
		if($("#id_ck").val() != 1){
			$("#id_msg").html("아이디 중복 체크 하셔야 합니다.")
			return false;
		}
		if($("#ck").val() != 1){
			$("#result").html("이메일 인증 하셔야 합니다.")
			return false;
		}
		
		if(!$("#password").val()){
			alert("비밀번호를 입력해야 합니다.");
			return false;
		}
	});
	
})//ready

</script>

</body>
</html>
