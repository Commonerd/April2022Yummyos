<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>SERACH LIST</title>
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
<h1>${search}로 검색한 결과입니다.</h1>
		<h1>STORE</h1>
	<%-- 	<c:if test="${size != 0 }"> --%>
			<table>
				<tr>
					<th>순번</th>
					<th>상호명</th>
					<th>테마</th>
					<th>조회수</th>
				</tr>
				<tbody id="tbody">
					<c:forEach items="${sList}" var="store">
						<tr>
							<td>${store.no}</td>
							<td><a href="store/content/${store.no}">${store.name }</a></td>
							<td>${store.category}</td>
							<td>${store.view_count}</td>
						</tr>
					</c:forEach>
				</tbody>
				<%-- <span id="ltlikecount">${store.blike }</span> --%>
			</table>
		<%-- 	</c:if> --%>

		<h1>FOODSTORY</h1>
		<%-- <c:if test="${count != 0 }"> --%>
			<table>
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<c:forEach items="${fList}" var="fstory">
					<tr>
						<td><a href ="board/fstory/content/${fstory.no}">${fstory.title}</a></td>
						<td>${fstory.id }</td>
						<td><fmt:formatDate value="${fstory.regdate }" dateStyle="short"/> </td>
						<td>${fstory.readcount }</td>
					</tr>
				</c:forEach>
			</table>
		

<%-- 		</c:if> --%>
			<h1>MPICK</h1>
		<%-- <c:if test="${count != 0 }"> --%>
			<table>
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<c:forEach items="${mList}" var="mpick">
					<tr>
						<td><a href="board/mpcik/content/${mpick.no}">${mpick.title}</a></td>
						<td>${mpick.id}</td>
						<td><fmt:formatDate value="${mpick.regdate }" dateStyle="short" /></td>
						<td>${mpick.readcount }</td>
					</tr>
				</c:forEach>
			</table>
			
<%-- 		</c:if> --%>


<c:if test="${count == 0 }">
	아직 등록된 정보가 없습니다.
</c:if>
	</div>

</body>
</html>