<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
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
   background-color: Aquamarine;
   width: 30px;
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
<body>
<h1>언제 어디서든 JMT 식사하세요, 야미요</h1>
   <a href="loginform">로그인</a>
   <a href="store/list">맛집리스트</a>
   <ol>
   <li>검색</li>
   <li>맛집</li>
</ol>
   

<<<<<<< HEAD
   <li><a href="details">상세페이지</a>
   <li><a href="details/ladder">사다리타기</a>
   
   
   <!--  nList begin end count pageNum totalPages -->
   <h2><p>최근 핫플레이스 맛집 Top 10!</p></h2>
      <c:if test="${count != 0 }">
         <table>
            <tr>
            </tr>
         <tbody id="tbody">
            <c:forEach items="${sList}" var="store">
               <tr>
                  <td><a href="/store/content/${store.no}">${store.name }</a></td>
                  <td>${store.category}</td>
                  <td><a href="/store/content/${store.no}"><img src="/store/img/${store.image}" style=width:300px; height:100px></a></td>
                  <td><br></td>
               </tr>      
            </c:forEach>
            </tbody>
            <%-- <span id="ltlikecount">${store.blike }</span> --%>
         </table>   
         <div id="page">
            <c:if test="${begin > pageNum }">
               <a href="/?p=${begin-1 }">[이전]</a>
            </c:if>
            <c:forEach begin="${begin }" end="${end}" var="i">
               <a href="/?p=${i}">${i}</a>
            </c:forEach>
            <c:if test="${end < totalPages }">
               <a href="/?p=${end+1}">[다음]</a>
            </c:if>
         </div>
=======
	<li><a href="details">상세페이지</a>
	<li><a href="details/ladder">사다리타기</a>
	
	
	<!--  nList begin end count pageNum totalPages -->
	<h2><p>최근 핫플레이스 맛집 Top 10!</p></h2>
		<c:if test="${count != 0 }">
			<table>
				<tr>
				</tr>
			<tbody id="tbody">
				<c:forEach items="${sList}" var="store">
					<tr>
						<td><a href="/store/content/${store.no}">${store.name }</a></td>
						<td>${store.category}</td>
						<td><a href="/store/content/${store.no}"><img src="/store/img/${store.image}" style=width:300px; height:100px></a></td>
					
					</tr>		
				</c:forEach>
				</tbody>
				<%-- <span id="ltlikecount">${store.blike }</span> --%>
			</table>   
			<div id="page">
				<c:if test="${begin > pageNum }">
					<a href="/?p=${begin-1 }">[이전]</a>
				</c:if>
				<c:forEach begin="${begin }" end="${end}" var="i">
					<a href="/?p=${i}">${i}</a>
				</c:forEach>
				<c:if test="${end < totalPages }">
					<a href="/?p=${end+1}">[다음]</a>
				</c:if>
			</div>
>>>>>>> refs/heads/master

      </c:if>
      <c:if test="${count == 0 }">
   아직 등록된 가게가 없습니다.
</c:if>


   
   
</body>
</html>