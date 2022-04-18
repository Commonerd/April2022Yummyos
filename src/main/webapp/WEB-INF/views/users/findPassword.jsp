<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Password</title>

</head>
<body>
<form method="post" class="form-signin" action="find_password" name="findform">
			<label for="id">ID</label>
			<input type="text" id="id" name="id" class="form-control"/>
			<br>
			<br>
			<label for="birth">birth</label>
			<input type="text" id="birth" name="birth" class="form-control"/>
			<br>
			<br>
			<label for="email">email</label>
			<input type="text" id="email" name="email" class="form-control"/>
			<br>
			<br>
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="check">
			<a href="/loginform">되돌아가기</a>
		<!-- 정보가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<script>
			opener.document.findform.id.value = "";
			opener.document.findform.birth.value = "";
			opener.document.findform.email.value = "";
			</script>
			<label>일치하는 정보가 존재하지 않습니다.</label>
		</c:if>

		<!-- 아이디와 비밀번호가 일치하지 않을 때 -->
		<c:if test="${check == 0 }">
		<div>
			<label>비밀번호를 변경해주세요.</label>
		</div>
		<div class="form-label-group">
		<input type="hidden" id="id" name="updateid" value="${updateid }">
		
			<input type="password" id="password" name="password" class="form-control"/>
			<label for="password">password</label>
		</div>
		
		<div class="form-label-group">
			<input type="password" id="confirmpassword" name="confirmpassword" class="form-control"/>
			<label for="confirmpassword">confirm password</label>
		</div>
		
		<div class="form-label-group">
				<input class="btn btn-lg btn-secondary btn-block text-uppercase"
					type="button" value="update password" onclick="updatePassword()">
			</div>
		</c:if>

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
				document.findform.submit();
			}
		}
	</script>
</body>
</html>
