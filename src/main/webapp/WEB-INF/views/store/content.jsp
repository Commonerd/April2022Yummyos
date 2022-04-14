<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>맛집 상세</title>
</head>
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
<table border="1">
	<tr><td>상호명</td><td>${dto.name}</td>
	<tr><td>카테고리</td><td>${dto.category}</td>
	<tr><td>전화번호</td><td>${dto.phone}</td>
	<tr><td>주소</td><td>${dto.address}</td>
	<tr><td>메뉴</td><td>${dto.menu}</td>
	<tr><td>설명</td><td>${dto.detail}</td>
	<tr><td>조회수</td><td>${dto.view_count}</td>
	
	<tr><td colspan="2" align="right">
	<a href="/store/update/${dto.no}">맛집 수정 </a> 
	<a id="${dto.no}" href="#">맛집 삭제</a>
	<a href="/store/list">목록 이동</a> 
	
	</td></tr>
</table>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	//맛집 삭제
	$(function(){
		$("a[id]").click(function(){
			let no = $(this).attr("id");
			$.ajax({url:"/store/delete", data:"no="+no, method:"delete"}
			).done(function(){
				location.href="/board/notice/list";
			})
			return false;
		})//click
	})//ready
	

</script>
<!--  cList -->
<div>
	<c:forEach items="${cList}" var="comm">
		<div>${comm.id} / <fmt:formatDate value="${comm.regdate }" dateStyle="short"/></div>
		<div>${comm.content} 
		<c:if test="${comm.id == user.id }">
		<button class="dbtn" id="${comm.cno}">삭제</button>
		</c:if>
		</div>
		<hr>
	</c:forEach>
	<input name="content" id="content"><button id="add">등록</button>
</div>
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
		
		/* 지훈이형 리뷰로 처리 할 곳
		$("#add").click(function(){
			let id = '${user.id}';
			let content = $("#content").val();
			let no = ${dto.no};
			
			$.ajax({url:"/comm/insert",
					data:"no="+no+"&id="+id+"&content="+content,
					method:"post"
			}).done(function(){
					location.reload();
				});
			
		})//click
		$(".dbtn").click(function(){
			let cno = $(this).attr("id");
			$.ajax({url:"/comm/delete/"+cno,
				method:"delete"
		}).done(function(){
				location.reload();
			});
			
		})//click */
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

</body>
</html>