<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>맛집 상세</title>

<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
   crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
   integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
   integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
   integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
   crossorigin="anonymous"></script>

 
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
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
-->
<style>
.selector-for-some-widget {
   box-sizing: content-box;
}
<
style>.orange {
   background-color: orange;
   width: 50px;
}
table {
   border-collapse: collapse;
   width: 800px;
}
.selector-for-some-widget {
   box-sizing: content-box;
}
<
style>.orange {
   background-color: orange;
   width: 50px;
}
table {
   border-collapse: collapse;
   width: 800px;
}
#center {
   width: 700px;
   margin-left: auto;
   margin-right: auto;
}
#page {
   text-align: center;
}
h1 {
   text-align: center; # kind { width : 200px;
   height: 30px;
   padding-left: 10px;
   font-size: 18px;
   color: #006fff;
   border: 1px solid #006fff;
   border-radius: 3px;
   position: relative;
   left: 205px;
   bottom: 10px;
}
p.count {
   color: gray;
   font-size: 0.8em;
}
</style>


</head>


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
		<div class="container-fluid">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-bs-target="#navbarTogglerDemo03"
				aria-controls="navbarTogglerDemo03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="/">메인</a>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item active"><a class="nav-link active"
						aria-current="page" href="/details/ladder">오늘 뭐먹지?<span
							class="sr-only"></span></a></li>
					<li class="nav-item"><a class="nav-link" href="/store/list">최신맛집</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/board/notice/list">공지사항</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">테마맛집기행</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="/board/mpick/list">미디어픽</a></li>
							<li><a class="dropdown-item" href="/board/fstory/list">푸드스토리</a></li>
						</ul></li>
				</ul>
			</div>
			<div id="search">
				<form class="d-flex" action="/all/search">
					<c:forEach items="${search}" var="search">
						<a href="/search/search?search=${search}">${search}</a>
					</c:forEach>
					<input class="form-control me-2" name="search" id="search"
						type="search" style="width: 500px;" placeholder="원하시는 메뉴를 입력해주세요"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">검색</button>
				</form>
			</div>
		</div>
		<c:if test="${ user.id != null }">
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"> ${user.id}님 환영합니다 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="/wishlist">위시리스트</a></li> 
							<li><a class="dropdown-item" href="/update">회원 정보 수정</a></li>
							<c:if test="${ user.role == 'role_admin'}">
                        <li><a class="dropdown-item" href="/board/mpick/update/${dto.no}">글 수정</a></li>
                        <li><a class="dropdown-item" id="${dto.no}" href="#">글 삭제</a></li>
 						<li><a class="dropdown-item" href="../list">목록 이동</a></li>
                     </c:if>
							<li><a class="dropdown-item" href="/logout">로그아웃</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</c:if>
		<c:if test="${ user.id == null }">
			<a href="/login" class="btn btn-primary"
				style="width: 100px; height: 35px;">로그인</a>
			<a href="/insert" class="btn btn-primary"
				style="width: 120px; height: 35px;">회원가입</a>
		</c:if>

  </div>
</nav>

<!-- 상세페이지 -->
 <div class="container" align="center" style="position:relative;top:50px;">

      <div class="row">
            <table class="table table-striped"
               style="text-align: center; float: center; width: 700px; border: 1px solid #dddddd">
               <thead>
                  <tr>
                     <th colspan="2"
                        style="background-color: #eeeeee; text-align: center;">상호명  : ${dto.name}</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td><input type="text" class="form-control"
                        name="name" maxlength="50" placeholder="주소  : ${dto.address}"
                        style="width: 1200px" readonly/></td>
                  </tr>
                  <tr align="left">
                   <tr>
                     <td><input type="text" class="form-control"
                        placeholder="카테고리  : ${dto.category}" name="category" maxlength="50"
                        style="width: 1200px" readonly/></td>
                  </tr>
                  <tr align="left">
                   <tr>
                     
                  </tr>
                  <tr align="left">
                   <tr>
                     <td><input type="text" class="form-control" 
                        placeholder="전화번호  : ${dto.phone}" name="phone" maxlength="50"
                        style="width: 1200px" readonly/></td>
                  </tr>
                  
                  <tr align="left"> <tr>
                     <td><input type="text" class="form-control"
                        placeholder="상세설명  : ${dto.detail}" name="detail" maxlength="50"
                        style="width: 1200px" readonly/></td>

                  </tr>
                   <tr align="left">
                   <tr><td>${dto.menu}</td>
                  </tr>
                  <tr align="left">
                   <tr>
                     <td>해시태그  : <c:forEach items="${hash}" var="hashtag" begin="1">
   <a href="/store/search?searchn=1&search=${hashtag}">#${hashtag} </a> 
   </c:forEach></h6>
   <h6 class="card-text">조회수  : ${dto.view_count}</h6>
   <h6 style="color:red;">좋아요♥ ${allCount }</h6>
   

   <div class="container" style="position:relative; top:30px; left: 380px;">         

            <div class="row">
               <div class="col-md-4 mb-5" >
                  <div class="card" style="width: 100%">
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
   <button type="button" class="btn btn-light"><a id="${dto.no}" href="store/delete" style="color:black;">맛집 삭제</a></button>
   </c:if>

                  </div>
                  
               </div>
               
            </div>   
            
      </div>

</td>
                  </tr>
                  <tr>
                  <td><div id="map" style="width:1200px;height:300px;"></div>
                  </td>
                  </tr>
                  <tr>
                     <td>
                        </td>
                  </tr>
               </tbody>
            </table>
                 <form method="POST" enctype="multipart/form-data" id="fileUploadForm" style="position:relative;left:320px;">
<h5 class="card-title">리뷰 등록 </h5>   
  <textarea id="review" name="content" cols="50" placeholder="회원님은 응원 댓글이 저희에게는 큰도움이 됩니다."></textarea><br>    
  <input type="hidden" name="store_no" value="${dto.no}">
  <input type="hidden" name="id" value="${user.id}">
  <input type="file" name="files" style="color:black;">    
 <button id="add" class="btn btn-dark">등록</button>
</form>
      </div>
   </div>
   <div id="map" style="width:1200px;height:300px;"></div>


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
   //맛집 삭제
   $(function(){
      $("a[id]").click(function(){
         let no = $(this).attr("id");
         $.ajax({url:"/store/delete", data:"no="+no, method:"delete"}
         ).done(function(){
            location.href="/store/list";
         })
         return false;
      })//click
   })//ready
   
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

<script>
   $(function(){
      $("a[id]").click(function(){
         let no = $(this).attr("id");
         $.ajax({url:"/store/delete", data:"no="+no, method:"delete"}
         ).done(function(){
            location.href="/store/list";
         })
         return false;
      })//click      
   })//ready
</script>

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
<%-- <div>
   <c:forEach items="${cList}" var="review">
      <div>${review.id} /
      <br>
      <fmt:formatDate value="${review.day }" dateStyle="short"/></div>
      <div><img src="/review/img/${review.image}" width="100px"><br>
       ${review.content}       
      <c:if test="${review.id == user.id }">
      <button class="dbtn" id="${review.no}">삭제</button>
      </c:if>
      </div>
      <hr>
   </c:forEach>
</div> --%>

		<div class="container">         
            <div class="row">
            <c:forEach items="${cList}" var="review">
               <div class="col-md-4 mb-5" >
                  <div class="card" style="width: 100%">
                     <img src="/review/img/${review.content}" class="card-img-top" alt="...">
                     <div class="card-body">
                        <h5 class="card-title">${review.id}</h5>
                        <h6 class="card-text">${review.image}</h6>
                        <p class="card-text"> <c:if test="${review.id == user.id }"> <button class="dbtn" id="${review.no}" style="background-color:black;color:white;">삭제</button>   </c:if></p>
        				<fmt:formatDate value="${review.day }" dateStyle="short"/>
                     </div>
                  </div>
               </div>
               
            </c:forEach>
            </div>   
            </div>
				
			<%--  <div id="page">
         <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
               <li class="page-item disabled">
               <c:if test="${begin > pageNum }">
                     <a class="page-link" href="/store/content/list?p=${begin-1 }&kind=${kind}">[이전]</a>
                  </c:if></li>
               <li class="page-item active" aria-current="page"><c:forEach
                     begin="${begin }" end="${end}" var="i">
                     <c:if test="${page == i }">
                        <li class="/store/content/page-item active"><a class="page-link"
                           href="list?p=${i}&kind=${kind}">${i}</a></li>
                     </c:if>
                     <c:if test="${page != i }">
                        <li class="page-item"><a class="page-link"
                           href="/store/content/list?p=${i}&kind=${kind}">${i}</a></li>
                     </c:if>
                  </c:forEach>
               <li class="page-item"><c:if test="${end < totalPages }">
                     <a class="page-link" href="/store/content/list?p=${end+1}">[다음]</a>
                  </c:if></li>
            </ul>
         </nav> --%>
         
         


   
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
   //맛집 삭제
   $(function(){
      $("a[id]").click(function(){
         let no = $(this).attr("id");
         $.ajax({url:"/store/delete", data:"no="+no, method:"delete"}
         ).done(function(){
            location.href="/store/list";
         })
         return false;
      })//click
   })//ready
   
</script>

<script>
   $(function(){
      $("a[id]").click(function(){
         let no = $(this).attr("id");
         $.ajax({url:"/store/delete", data:"no="+no, method:"delete"}
         ).done(function(){
            location.href="/store/list";
         })
         return false;
      })//click      
   })//ready
</script>


<!--  cList -->
<%-- <div>
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
</div> --%>


	
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
         
      $("a[id]").click(function(){
         let store_no = $(this).attr("id");
         $.ajax({url:"/store/delete", data:"no="+store_no, method:"delete"}
         ).done(function(){
            location.href="/store/list";
         })
         return false;
      })//click
      
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
   
   
 <div class="container">
      <footer class="row row-cols-5 py-5 my-5 border-top">
         <div class="col">
            <a href="/"
               class="d-flex align-items-center mb-3 link-dark text-decoration-none">
               <svg class="bi me-2" width="40" height="32">
                  <use xlink:href="#bootstrap" /></svg>
            </a>
            <p class="text-muted">&copy; 2022 YUMMYO Project</p>
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
   
</html>