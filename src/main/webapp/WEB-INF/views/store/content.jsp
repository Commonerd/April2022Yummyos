<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>맛집 상세</title>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>

<style>
#login {
	margin-right:0px;
}

#join {
margin-right:5px;
}

.selector-for-some-widget {
  box-sizing: content-box;
}

h1 {
 color: black;
 text-align:center;
  padding:50px;
   margin: 20px;
}

h2 {
	color: lightslategray;
	text-align:center;
	  padding:50px;
   margin: 20px;
}

p {
 color:red !important;
 font-size: 0.9em;
 line-ehight: 2.0;
}

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

#login {
	margin-right:0px;
}

#join {
margin-right:5px;
}

.selector-for-some-widget {
  box-sizing: content-box;
}

h1 {
 color: black;
 text-align:center;
  padding:50px;
   margin: 20px;
}

h2 {
	color: lightslategray;
	text-align:center;
	  padding:50px;
   margin: 20px;
}

p {
 color:red !important;
 font-size: 0.9em;
 line-ehight: 2.0;
}

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
#map{
 position: absolute;
        left: 1200px;
        top: 110px;

}
</style>

<!-- 카카오맵 -->
<style>
    .map_wrap {position:relative;width:100%;height:500px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/">메인</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/details/ladder">오늘 뭐먹지?<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/store/list">맛집창고</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/board/notice/list">공지사항</a>
      </li>	
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          테마맛집기행
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/board/mpick/list">미디어픽</a>
          <a class="dropdown-item" href="/board/fstory/list">푸드스토리</a>
        </div>
      </li>
    </ul>
    	<div id="search">
	<form class="form-inline my-2 my-lg-0" action="/all/search">
		<c:forEach items="${search}" var="search">
			<a href="/search/search?search=${search}">${search}</a>
		</c:forEach>
			<br>
			<input name="search" id="search" type="search" style="width: 800px;" class="form-control mr-sm-2" placeholder="원하시는 메뉴를 입력해주세요" aria-label="Search">
		<input type="submit" value="검색" class="btn btn-outline-success my-3 my-sm-0" style="color:black;border-color:black;" aria-label="Search">
	</form>
</div>

<c:if test="${ user.id != null }">
<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ${user.id}님 환영합니다
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/wishlist">위시리스트</a>
          <a class="dropdown-item" href="/update">회원 정보 수정</a>
          	<c:if test="${ user.role == 'role_admin'}">
		<a class="dropdown-item" href="/store/insert">가게 등록</a>
			</c:if>
          <a class="dropdown-item" href="/logout">로그아웃</a>
        </div>
      </li>
		</c:if>
		<c:if test="${ user.id == null }">
		 <a href="/loginform" id="login" class="btn btn-primary" style="width:100px; height:55px;">로그인</a>
 		<a href="/insert" id="join" class="btn btn-primary" style="width:120px; height:55px;">회원가입</a>
		</c:if>
  </div>
</nav>		

			<div class="container">         
            <div class="row">
               <div class="col-md-4 mb-5" >
                  <div class="card" style="width: 100%">
                     <div class="card-body">
                     
                     <h6 class="card-title"><strong>상호명  : ${dto.name}</strong></h6>
                     <h6 class="card-text" style="color:red;">좋아요♥ <span id="count">${allCount }</span></h6>
                     <h6 class="card-text">카테고리  : ${dto.category}</h6>
                     <h6 class="card-text">전화번호  : ${dto.phone}</h6>
                     <h6 class="card-text">주소  : ${dto.address}</h6>
                     <h6 class="card-text">상세설명  : ${store.detail}</h6>
                     <h6 class="card-text">조회수  : ${dto.view_count}</h6>
                     <h6 class="card-text">해시태그  : <c:forEach items="${hash}" var="hashtag" begin="1">
	<a href="/store/search?searchn=1&search=${hashtag}">#${hashtag} </a> 
	</c:forEach></h6>
                     </div>
                     <hr>
                     <c:if test="${ user.id != null }">
                     <c:choose>
						<c:when test="${ltlike ==0}">
							<button type="button" class="btn btn-light" id="likebtn">좋아요</button>
							<input type="hidden" id="likecheck" value="${ltlike }">
						</c:when>					
						<c:when test="${ltlike ==1}">
							<button type="button" class="btn btn-danger" id="likebtn">좋아요</button>
							<input type="hidden" id="likecheck" value="${ltlike }">
						</c:when>
					</c:choose>
					
	<button type="button"  id="addwishlist" name="addwishlist" class="btn btn-light">위시리스트 등록</button>
	<button type="button" class="btn btn-light"><a href="/wishlist" style="color:black;" >위시리스트 바로가기</a></button>
	</c:if>
	<button type="button" class="btn btn-light"><a href="/store/list" style="color:black;">맛집 목록 이동</a></button>
                     <c:if test="${ user.role == 'role_admin'}">
	<button type="button" class="btn btn-light"><a href="/store/update/${dto.no}" style="color:black;">맛집 수정</a></button>
	<button type="button" class="btn btn-light"><a class="storedelete" id="${dto.no}" href="store/delete" style="color:black;">맛집 삭제</a></button>
	</c:if>
	
					
                  </div>
                  
               </div>
               
            </div>   
            
		</div>
		
		<script>
	//맛집 삭제
	$(function(){
		$(".storedelete").click(function(){
			let no = $(this).attr("id");
			$.ajax({url:"/store/delete", data:"no="+no, method:"delete"}
			).done(function(){
				location.href="/store/list";
			})
			return false;
		})//click
	})//ready
	 

</script>

		<div class="container">         
            <div class="row">
               <div class="col-md-4 mb-5" style="position:abolute; top: -740px; left: 400px;">
                  <div class="card" style="width: 100%; height: 85%;">
                     <div class="card-body">
                     
                     <h5 class="card-text">${dto.menu}</h5>
                        
                     </div>
                  </div>
               </div>
            </div>   
		</div>
		
		
		<div id="map" style="width:400px;height:300px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2937f4a07074c718e1c8b3e8a1f4f9b&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(${dto.map_lt}, ${dto.map_ln}), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${dto.address}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${dto.name}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>


<!--  cList -->
<div>
	<c:forEach items="${cList}" var="review">
		<div>${review.id} / <fmt:formatDate value="${review.day }" dateStyle="short"/></div>
		<div><img src="/review/img/${review.image}" width="100px"><br>
		 ${review.content} 		
		<c:if test="${review.id == user.id }">
		<button class="dbtn" id="${review.no}">삭제</button>
		</c:if>
		</div>
		<hr>
	</c:forEach>
</div>

<form method="POST" enctype="multipart/form-data" id="fileUploadForm" style="position:absolute; top:1000px;left:400px;">
<h5 class="card-title">리뷰 등록 </h5>	
  <textarea id="review" name="content" cols="50" placeholder="회원님은 응원 댓글이 저희에게는 큰도움이 됩니다."></textarea><br> 	
  <input type="file" name="files" style="color:black;"> 	
  <input type="hidden" name="store_no" value="${dto.no}">
  <input type="hidden" name="id" value="${user.id}">
 <button id="add" class="btn btn-dark">등록</button>
</form>

	
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script>

//위시리스트 등록
$("#addwishlist").click(function(){
			let id = '${user.id}';
			let store_no = ${dto.no};
			let store_name = '${dto.name}';
			let category = '${dto.category}';
			
			$.ajax({url:"/wishlist/add",
					data:"no="+store_no+"&id="+id+"&name="+store_name+"&category="+category,
					method:"post"
			}).done(function(){
					location.reload();
				});
			
		})//click
</script>



<script>
	$(function(){
		
		$('#likebtn').click(function(){
			likeupdate();
		});
		
		function likeupdate(){
			likeurl = "/like/likeupdate";
			data = {"ltmid" : '${user.id}',
					"ltbid" : ${dto.no}};
			
		$.ajax({
			url : likeurl,
			type : 'POST',
			contentType: 'application/json',
			data : JSON.stringify(data),
			success : function(result){
				console.log(result.count);
				let count = result.count;
				if(count == 0){
					console.log("좋아요 취소");
					 $('#likecheck').val(0);
					 $('#likebtn').attr('class','btn btn-light');
					 $("#count").text( parseInt($("#count").text())-1);
				}else if(count == 1){
					console.log("좋아요!");
					$('#likecheck').val(1);
					$('#likebtn').attr('class','btn btn-danger');
					 $("#count").text( parseInt($("#count").text())+1);   
				}
			}, error : function(result){
				console.log("에러" + result.result)
			}
			
			});
		};
		
		$("#add").click(function (event) {         
			//preventDefault 는 기본으로 정의된 이벤트를 작동하지 못하게 하는 메서드이다. submit을 막음 
			//event.preventDefault();          
		    // Get form         
		    var form = $('#fileUploadForm')[0];  	    
		    // Create an FormData object          
		    var data = new FormData(form);  	   
		    // disabled the submit button         
		    //$("#btnSubmit").prop("disabled", true);   
		    
		    $.ajax({             
		    	type: "POST",          
		        enctype: 'multipart/form-data',  
		        url: "/review/insert",        
		        data: data,          
		        processData: false,    
		        contentType: false,      
		        cache: false,           
		        timeout: 600000,       
		        success: function (data) { 
		        	location.reload();       
		        	//$("#btnSubmit").prop("disabled", false);      
		        },          
		        error: function (e) {  
		        	console.log("ERROR : ", e);     
		            //$("#btnSubmit").prop("disabled", false);    
		            alert("fail");      
		         }     
			});
		});
		$(".dbtn").click(function(){
			let no = $(this).attr("id");
			$.ajax({url:"/review/delete/"+no,
				method:"delete"
		}).done(function(){
				location.reload();
			});
			
		})//click 
		
	})//ready
	
	</script>


	</body>
	<footer>
	<div class="container">
      <footer class="row row-cols-5 py-5 my-5 border-top">
         <div class="col">
            <a href="/"
               class="d-flex align-items-center mb-3 link-dark text-decoration-none">
               <svg class="bi me-2" width="40" height="32">
                  <use xlink:href="#bootstrap" /></svg>
            </a>
            <p class="text-muted">&copy; 2022 YUMMYO Project </p>
         </div>

         <div class="col"></div>
         <div class="col">
            <ul class="nav flex-column">
               <li class="nav-item mb-2"><a href="/footer/tservice"
                  class="nav-link p-0 text-muted">이용약관</a></li>
               <li class="nav-item mb-2"><a href="/footer/nmembers"
                  class="nav-link p-0 text-muted">비회원 이용정책</a></li>
               <li class="nav-item mb-2"><a href="/footer/gps"
                  class="nav-link p-0 text-muted">위치기반 서비스 이용약관</a></li>
            </ul>
         </div>

         <div class="col">            
            <ul class="nav flex-column">
               <li class="nav-item mb-2"><a href="/footer/inquiry"
                  class="nav-link p-0 text-muted">문의하기</a></li>
               <li class="nav-item mb-2"><a href="/footer/privacy"
                  class="nav-link p-0 text-muted">개인정보 처리방침</a></li>
            </ul>
         </div>
      </footer>
   </div>
   <div class="b-example-divider"></div>
	</footer>
</html>