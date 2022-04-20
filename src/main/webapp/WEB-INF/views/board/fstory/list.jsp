<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>맛있는 이야기</title>
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
th {
	border: 1px solid black;
	background-color: orange;
	width: 150px;
}
td {
	border: 1px solid black;
}
a {
	margin: 10px auto;
}
#page {
	text-align: center;
}
#hashTag_area {
	width: 700px;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
<div id="center">
		<h1>게시글 목록</h1>
		<div align="right">
			<a href="/main">main </a><a href="write"> 새글 등록</a>
		</div>
		<c:if test="${count != 0 }">
			<table>
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<c:forEach items="${fList}" var="fstory">
					<tr>
						<td><a href ="content/${fstory.no}">${fstory.title}</a></td>
						<td>${fstory.id }</td>
						<td><fmt:formatDate value="${fstory.regdate }" dateStyle="short"/> </td>
						<td>${fstory.readcount }</td>
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
		<c:if test="${count == 0 }">
		아직 입력한 글이 없습니다.
		</c:if>
	</div>

	<div id="search" align="center">
		<form action="search">
			<select name="searchn">
				<option value="0">제목</option>
				<option value="1">작성자</option>
			</select> 
			<input type="text" name="search" size="15" maxlength="50" /> 
			<input type="submit" value="검색" />
		</form>
	</div>

</body>
</html>