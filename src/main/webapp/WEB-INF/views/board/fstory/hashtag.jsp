<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>해쉬태그</title>
<style>



</style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#btnK").click(function(){ 
		$(location).attr("href", "http://localhost:8087/store/search?searchn=1&search=%ED%95%9C%EA%B5%AD")
	}) 
	$("#btnJ").click(function(){ 
		$(location).attr("href", "http://localhost:8087/store/search?searchn=1&search=%EC%9D%BC%EB%B3%B8")
	})
	$("#btnC").click(function(){ 
		$(location).attr("href", "http://localhost:8087/store/search?searchn=1&search=%EC%A4%91%EA%B5%AD") 
	}) 
	$("#btnB").click(function(){ 
		$(location).attr("href", "http://localhost:8087/store/search?searchn=1&search=%ED%84%B0%ED%82%A4D") 
	}) 
	$("#btnT").click(function(){ 
		$(location).attr("href", "http://localhost:8087/store/search?searchn=1&search=%EB%B2%A0%ED%8A%B8%EB%82%A8") 
	}) 

})
</script> 
		<div class="Hashtag">
		<button type="button" id="btnK"># 한식</button> 
		<button type="button" id="btnJ"># 일식</button> 
		<button type="button" id="btnC"># 중식</button>
		<button type="button" id="btnB"># 베트남</button> 
		<button type="button" id="btnT"># 터키</button>
		</div>				
</body>


</html>