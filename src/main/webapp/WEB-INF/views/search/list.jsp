<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>메인 검색 글 목록</title>
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
a {
	margin: 10px auto;
}

#page {
	text-align: center;
}
</style>
</head>
<body>
	<div id="center">
		<h1>게시글 목록</h1>
		<c:if test="${count != 0 }">
			<table>
				<tr>
					<th>식당 이름</th>
				</tr>
				<c:forEach items="${sList}" var="sList">
					<tr>
						<td><a href ="store/${store.no}">${store.name}</a></td>
						<td>${store.id }</td>
					</tr>
				</c:forEach>
			</table>
			<div id="page">
				<c:if test="${begin > pageNum }">
					<a href="list?p=${begin-1 }">[이전]</a> <!-- ? 쿼리문자 = url에서 확인 -->
				</c:if>
				<c:forEach begin="${begin }" end="${end}" var="i">
					<a href="list?p=${i}">${i}</a>
				</c:forEach>
				<c:if test="${end < totalPages }">
					<a href="list?p=${end+1}">[다음]</a>
				</c:if>
			</div>

		</c:if>
	
	</div>

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