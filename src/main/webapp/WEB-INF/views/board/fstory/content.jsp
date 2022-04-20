<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>글 상세보기</title>
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
<table border="1">

	<tr><td>제목</td><td>${dto.title}</td>
	<tr><td>작성자</td><td>${dto.id}</td>
	<tr><td>내용</td><td>${dto.content}</td>
	<tr><td>등록일</td><td><fmt:formatDate value="${dto.regdate }" dateStyle="long"/></td>
	<tr><td>조회수</td><td>${dto.readcount}</td>
	<tr><td colspan="2" align="right">
	<c:if test="${ user.id == dto.id }">
	<a href="/board/fstory/update/${dto.no}"> 글 수정 </a> 
	<a id="${dto.no}" href="#">글 삭제</a>
	</c:if>
	<a href="../list">목록 이동</a> 
	</td></tr>
</table>
<!-- cList -->
<div>
	<c:forEach items="${ cList }" var="fs_comm">
		<div> ${fs_comm.id } /<fmt:formatDate value="${fs_comm.regdate}" dateStyle="short"/> </div>
		<div>${fs_comm.content}
		<c:if test="${fs_comm.id == user.id}" >
		<button class="dbtn" id="${fs_comm.fs_cno}">삭제</button>
		</c:if>
		</div>
		<hr>
	</c:forEach>
	<input name="content" id="content">
	<button id="add">등록</button>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("a[id]").click(function(){
				let f_no = $(this).attr("id");
			$.ajax({url:"/board/fstory/delete", 
						data:"no="+f_no, 
						method:"delete"}
			).done(function(){
				location.href="/board/fstory/list";
			})
			return false;
		})//click
		$("#add").click(function(){
			let id = '${user.id}';
			let content = $("#content").val();
			let f_no = ${dto.no};
			
			$.ajax({url:"/fs_comm/insert",
					data:"f_no="+f_no+"&id="+id+"&content="+content,
					method:"post"
			}).done(function(){
					location.reload();		
				});
			
		})//click
		$(".dbtn").click(function(){
			let fs_cno = $(this).attr("id");
			$.ajax({url:"/fs_comm/delete/"+fs_cno,
				method:"delete"
		}).done(function(){
				location.reload();		
			});
		
		})//click
	})//ready

</script>

</body>
</html>