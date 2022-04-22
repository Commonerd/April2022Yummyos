<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>SERARCH</title>
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
		<h1>${keyword}로 검색한 결과입니다.</h1>

		<c:if test="${count != 0 }">
			<h3>STORE</h3>
			<table>
				<tr>
					<th>상호명</th>
					<th>테마</th>				
				</tr>
				<c:forEach items="${sList}" var="store">
					<tr>
						<td><a href ="store/content/${store.no}">${store.name}</a></td>
						<td>${store.category}</td>
					</tr>
				</c:forEach>
			</table>
			<c:forEach items="${sList}" var="store">
				<a href="/store/search?p&search=${store.no}">${store.name}</a>
			</c:forEach>

			<H3>FOODSTORY</H3>
					<table>
				<tr>
					<th>제목</th>
				</tr>
				<c:forEach items="${fList}" var="fstory">
					<tr>
						<td><a href ="board/fstory/content/${fstory.no}">${fstory.title}</a></td>
					</tr>
				</c:forEach>
			</table>
			<H3>MPCIK</H3>
				<table>
				<tr>
					<th>제목</th>
					
				</tr>
				<c:forEach items="${mList}" var="mpick">
					<tr>
						<td><a href="board/mpick/content/${mpick.no}">${mpick.title}</a></td>
					</tr>
				</c:forEach>
			</table>
			<c:forEach items="${mList}" var="mpick">
				<a href="board/mpick/search?p&search=${mpick.no}">${mpick.title}</a>
			</c:forEach>

		</c:if>

		<c:if test="${count == 0 }">
	검색 조건에 맞는 글이 없습니다.
</c:if>


	</div>
</body>
</html>