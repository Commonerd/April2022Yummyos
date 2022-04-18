<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find ID</title>

</head>
<body>
<form method="post" class="form-signin" action="findId" name="findform">
		<label for="birth">birth</label>
			<input type="text" id="birth" name="birth" class="form-control" placeholder="yyyyMMdd,ex)19900101"/>
			<br>
		
		<label for="email">email</label>
			<input type="text" id="email" name="email" class="form-control" placeholder="abc@abc.com"/>
			
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="check">
			<a href="/loginform">되돌아가기</a>
		<!-- 이름과 전화번호가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<script>
				opener.document.findform.birth.value = "";
				opener.document.findform.email.value = "";
			</script>
			<label>일치하는 정보가 존재하지 않습니다.</label>
		</c:if>

		<!-- 이름과 비밀번호가 일치하지 않을 때 -->
		<c:if test="${check == 0 }">
		<br>
		<label>찾으시는 아이디는' ${id}' 입니다.</label>
		
			</div>
		</c:if>

	</form>
	
</body>
</html>