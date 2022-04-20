<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<!--  nList begin end count pageNum totalPages -->
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

th {border: 1px solid black;
	background-color: Aquamarine;
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
	<c:if test="${ user.id != null }">
		<a>${user.id}님</a>
		<a href="/logout">로그아웃</a>
		</c:if>
		<c:if test="${ user.id == null }">
		<a href="/login">로그인</a>
		<a href="/insert">회원가입</a>
		</c:if>
	<div id="center">
		<h1>공지사항</h1>
		<div align="right">
			<a href="/main">main</a><a href="write">새글 등록</a>
		</div>

		<c:if test="${count != 0 }">
			<table>
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<c:forEach items="${nList}" var="notice">
					<tr>
						<td><a href ="content/${notice.no}">${notice.title}</a></td>
						<td>${notice.id }</td>
						<td><fmt:formatDate value="${notice.regdate}" dateStyle="short"/> </td>
						<td>${notice.readcount}</td>
					</tr>
				</c:forEach>
			</table>
			<div id="page">
				<c:if test="${begin > pageNum }">
					<a href="list?p=${begin-1 }">[이전]</a>
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
<!-- <option value="1">내용</option> 윤정화씨의 해시태그로 구현할 부분.-->
<option value="2">작성자</option>
</select>
<input type="text" name="search" size="15" maxlength="50" /> 
<input type="submit" value="검색" />
</form>	
</div>
</body>
</html>