<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>글 상세보기</title>
</head>
<body>
<table border="1">
	<tr><td>제목</td><td>${dto.title}</td>
	<tr><td>작성자</td><td>${dto.id}</td>
	<tr><td>내용</td><td>${dto.content}</td>
	<tr><td>등록일</td><td><fmt:formatDate value="${dto.regdate }" dateStyle="long"/></td>
	<tr><td>조회수</td><td>${dto.readcount}</td>
	<tr><td colspan="2" align="right">
	<c:if test="${ users.id == dto.id }">
	<a href="/board/mpick/update/${dto.no}">글 수정 </a> 
	<a id="${dto.no}" href="#">글 삭제</a>
	</c:if>
	<a href="../list">목록 이동</a> 
	</td></tr>
</table>
<!--  cList -->
<div>
	<c:forEach items="${cList}" var="mp_comm">
		<div>${mp_comm.id} / <fmt:formatDate value="${mp_comm.regdate }" dateStyle="short"/></div>
		<div>${mp_comm.content} 
		<c:if test="${mp_comm.id == users.id }">
		<button class="dbtn" id="${mp_comm.mp_cno}">삭제</button>
		</c:if>
		</div>
		<hr>
	</c:forEach>
	<input name="content" id="content"><button id="add">등록</button>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("a[id]").click(function(){
			let no = $(this).attr("id");
			$.ajax({url:"/board/mpick/delete", data:"no="+mp_no, method:"delete"}
			).done(function(){
				location.href="/board/mpick/list";
			})
			return false;
		})//click
		
		$("#add").click(function(){
			let id = '${users.id}';
			let content = $("#content").val();
			let no = ${dto.no};
			
			$.ajax({url:"/mp_comm/insert",
					data:"no="+mp_no+"&id="+id+"&content="+content,
					method:"get"
			}).done(function(){
					location.reload();		
				});
			
		})//click
		$(".dbtn").click(function(){
			let mp_cno = $(this).attr("id");
			$.ajax({url:"/mp_comm/delete/"+mp_cno,
				method:"get"
		}).done(function(){
				location.reload();		
			});
			
		})//click
	})//ready

</script>

</body>
</html>