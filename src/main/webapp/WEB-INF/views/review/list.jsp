<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<!--  bList begin end count pageNum totalPages -->
<title>글 목록</title>
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
</style>
</head>
<body>
	<div id="center">
		<h3>리뷰 등록</h3>
		<div align="left">
			<a href="write">리뷰 등록</a>
		</div>

		<c:if test="${count != 0 }">
			<table>
				<tr>
					<th>리뷰내용</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>점수</th>
				</tr>
				<c:forEach items="${mList}" var="review">
					<tr>
						<td><a href="content/${review.no}">${review.content}</a></td>
						<td>${review.id}</td>
						<td><fmt:formatDate value="${review.day }" dateStyle="short" /></td>
						<td>${review.rating }</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${count == 0 }">
	아직 입력한 글이 없습니다.
</c:if>
	</div>	
</body>
</html>