<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>메인 검색</title>
<style>
#center {
	width: 700px;
	margin-left: auto;
	margin-right: auto;
}

table {

	border: 1px solid black;
	width: 700px;
	border-collapse: collapse;
}

th {border: 1px solid black;
	background-color: orange;
	width: 150px;
}
td{border: 1px solid black;}
a {margin: 10px auto;}

#page {
	text-align: center;
}

</style>
</head>
<body>
<c:if test="${count != 0 }">
		<div id="page">
				<c:if test="${begin > pageNum }">
					<a href="search?p=${begin-1}&search=${search}&searchn=${searchn}">[이전]</a>
				</c:if>
				<c:forEach begin="${begin }" end="${end}" var="i">
					<a href="search?p=${i}&search=${search}&searchn=${searchn}">${i}</a>
				</c:forEach>
				<c:if test="${end < totalPages }">
					<a href="search?p=${end+1}&search=${search}&searchn=${searchn}">[다음]</a>
				</c:if>
			</div>

		</c:if>
		<c:if test="${count == 0 }">
<h1>${keyword}로 검색한 결과입니다.</h1>
</c:if>
<div id="search" align="center">
<form action="search">
<select name="searchn">
<option value=All">검색</option>
</select>
<input type="text" name="search" size="15" maxlength="50" /> 
<input type="submit" value="검색" />

</form>	
	</div>



</body>
</html>