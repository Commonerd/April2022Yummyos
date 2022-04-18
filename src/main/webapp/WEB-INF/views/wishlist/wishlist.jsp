<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<!--  wList begin end count pageNum totalPages -->
<title>위시리스트 목록</title>
<style>
#center {
	width: 500px;
	margin-left: auto;
	margin-right: auto;
}

table {
	border: 1px solid black;
	width: 500px;
	border-collapse: collapse;
}

th {border: 1px solid black;
	background-color: Aquamarine;
	width: 100px;
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
		<h1>위시리스트</h1>
		<div align="right">
			<a href="/main">main</a>
		</div>

		<c:if test="${count != 0 }">
			<table>
				<tr>
					<th>가게번호</th>
					<th>가게명</th>
					<th>테마</th>
					<th>위시리스트 삭제</th>
				</tr>
			
				<c:forEach items="${wList}" var="wishlist">
					<tr>	
						<td><a href="store/content/${wishlist.store_no}">${wishlist.store_no}</a></td>
						<td><a href="store/content/${wishlist.store_no}">${wishlist.store_name}</a></td>
						<td><a href="store/content/${wishlist.store_no}">${wishlist.category}</a></td>
						<td><a id="${wishlist.store_no}" href="#">삭제</a></td>
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
	아직 위시리스트가 없습니다.
</c:if>

	</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	//위시리스트 삭제
	$(function(){
		$("a[id]").click(function(){
			let store_no = $(this).attr("id");
			$.ajax({url:"/wishlist/delete", data:"no="+store_no, method:"delete"}
			).done(function(){
				location.href="/wishlist";
			})
			return false;
		})//click
	})//ready
	

</script>
</body>
</html>