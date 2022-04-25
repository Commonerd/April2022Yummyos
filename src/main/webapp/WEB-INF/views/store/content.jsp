<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>맛집 상세</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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

<style>
    .map_wrap {position:relative;width:100%;height:500px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>

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
	<tr><td>상호명</td><td>${dto.name} 좋아요<span id="count">${allCount }</span></td>
	<tr><td>카테고리</td><td>${dto.category}</td>
	<tr><td>전화번호</td><td>${dto.phone}</td>
	<tr><td>주소</td><td>${dto.address}</td>
	<tr><td>메뉴</td><td>${dto.menu}</td>
	<tr><td>조회수</td><td>${dto.view_count}</td>
	<tr><td>해시태그</td><td>

	<c:forEach items="${hash}" var="hashtag" begin="1">
	<a href="/store/search?searchn=1&search=${hashtag}">#${hashtag} </a> 
	</c:forEach>
	</td>

	<tr><td colspan="2" align="right">
	<c:if test="${ user.role == 'role_admin'}">
	<a href="/store/update/${dto.no}">맛집 수정 </a> 
	<a id="${dto.no}" href="#">맛집 삭제</a>
	</c:if>

	<a href="/store/list">목록 이동</a>
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
	<br>	
	<c:if test="${ user.id != null }">
	<button id="addwishlist" name="addwishlist">위시리스트 등록</button>
	<a href="/wishlist">위시리스트 바로가기</a>
	</c:if></td></tr>
</table>
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


<br>

<p style="margin-top:-12px">
    <em class="link">
        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
        </a>
    </em>
</p>
<div id="map" style="width:30%;height:300px;"></div>

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
	
<hr>

 <!-- 해시태그 -->


<br>리뷰 등록
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

<br>
<form method="POST" enctype="multipart/form-data" id="fileUploadForm"> 	
  <textarea id="review" name="content" cols="50" placeholder="회원님은 응원 댓글이 저희에게는 큰도움이 됩니다."></textarea><br> 	
  <input type="file" name="files"> 	
  <input type="hidden" name="store_no" value="${dto.no}">
  <input type="hidden" name="id" value="${user.id}">
 <button id="add">등록</button>
</form>

<br>
<br>
<br>
<br>
<br>	
<br>


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


	</body>
</html>