<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>


<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>


<title>룰렛</title>
<style type="text/css">


html, body, button {
   font-family: Arial, "돋움", Dotum, "굴림", Gulim, "Apple SD Gothic Neo",
      AppleGothic, sans-serif;
}




/* .parent{
    width: 90%;
    margin: 10px auto;
    display: flex;
}
.box-roulette {
    border: 1px solid red;
    flex:1;
    width:30%;
    box-sizing: border-box;
}
.map_wrap{
    border: 1px solid green;
    flex:1;
    margin: 0px 5%;
    width:30%;
    box-sizing: border-box;
} */

table, tr, td {

border-collapse: collapse;

}

.cell_padding {

padding : 1em;

}

.box-roulette {
    border: 1px solid red;
   float:left;
    width:30%;
    box-sizing: border-box;
}
.map_wrap{   
    border: 1px solid green;
    /* flex:1; */
    margin: 15px 15%;
    width:50%;
    box-sizing: border-box;
}
 
button {
   border: 0;
   margin: 0;
   padding: 0;
}

.title {
   margin-top: 50px;
   text-align: center;
}

.box-roulette {
   position: relative;
   margin: 50px auto;
   width: 500px;
   height: 500px;
   border: 10px solid #ccc;
   border-radius: 50%;
   background: #ccc;
   overflow: hidden;
}

.box-roulette .markers {
   position: absolute;
   left: 50%;
   top: 0;
   margin-left: -25px;
   width: 0;
   height: 0;
   border: 25px solid #fff;
   border-left-color: transparent;
   border-right-color: transparent;
   border-bottom-color: transparent;
   z-index: 9999;
}

.box-roulette .roulette {
   position: relative;
   width: 100%;
   height: 100%;
   overflow: hidden;
}

.box-roulette .item {
   position: absolute;
   top: 0;
   width: 0;
   height: 0;
   border: 0 solid transparent;
   transform-origin: 0 100%;
}

.box-roulette .label {
   position: absolute;
   left: 0;
   top: 0;
   color: #fff;
   white-space: nowrap;
   transform-origin: 0 0;
}

.box-roulette .label .text {
   display: inline-block;
   font-size: 20px;
   font-weight: bold;
   line-height: 1;
   vertical-align: middle;
}

#btn-start {
   display: block;
   position: absolute;
   left: 50%;
   top: 50%;
   margin: -50px 0 0 -50px;
   width: 100px;
   height: 100px;
   font-weight: bold;
   background: #fff;
   border-radius: 50px;
   z-index: 9999;
   cursor: pointer;
}
</style>
<style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script
   src="https://cdn.sobekrepository.org/includes/jquery-rotate/2.2/jquery-rotate.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
</head>
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
                        <li><a class="dropdown-item" href="/board/mpick/write">새글 등록</a></li>
                     </c:if>
                     <li><a class="dropdown-item" href="/logout">로그아웃</a></li>
                  </ul>
               </li>
            </ul>
         </div>
      </c:if>
      <c:if test="${ user.id == null }">
         <a href="/loginform" id="login" class="btn btn-primary"
            style="width: 100px; height: 35px;">로그인</a>
         <a href="/insert" id="join" class="btn btn-primary"
            style="width: 120px; height: 35px;">회원가입</a>
      </c:if>
      
   </nav>









<table >

<th>
<h4 align=center><span class="badge rounded-pill bg-warning text-dark">↓↓아래 룰렛버튼을 클릭해주세요↓↓</span></h4>
</th>
<th>
<h4 align=center><span class="badge rounded-pill bg-warning text-dark">아래 지도에서 원하시는 맛집을 찾아보세요</span></h4>
</th>

<tr>

<td class="cell_padding">

<div class="box-roulette">
   <div class="markers"></div>
   <button type="button" id="btn-start">
      야미요<br>오늘 뭐먹지??<br>click
   </button>
   <div class="roulette" id="roulette"></div>
   
</div>
</td>

<td class="cell_padding" width="100%">
<div  class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:absolute;overflow:hidden;"></div>

    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>
                <form id="searchForm" onsubmit="searchPlaces(); return false;">
                    키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
                    <button type="submit">검색하기</button> 
                </form>
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
</div>
</td>

</tr>




</table>






<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2937f4a07074c718e1c8b3e8a1f4f9b&libraries=services"></script>
<script>
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
</script>







   <script type="text/javascript">
   (function($) {
      $.fn.extend({

         roulette: function(options) {

            var defaults = {
               angle: 0,
               angleOffset: 0,
               speed: 3000,
               easing: "easeInOutElastic",
            };

            var opt = $.extend(defaults, options);

            return this.each(function() {
               var o = opt;

               var data = [
                  { color: '#3f297e', text: '한식' },
                  { color: '#1d61ac', text: '중식' },
                  { color: '#169ed8', text: '일식' },
                  { color: '#209b6c', text: '햄버거' },
                  { color: '#60b236', text: '피자' },
                  { color: '#efe61f', text: '치킨' },
                  { color: '#f7a416', text: '돈까스' },
                  { color: '#e6471d', text: '삼겹살' },
                  { color: '#dc0936', text: '갈비' },
                  { color: '#e5177b', text: '국밥' },
                  { color: '#881f7e', text: '패스트푸드' }
                  
               ];

               var $wrap = $(this),
                     $btnStart = $wrap.find("#btn-start"),
                     $roulette = $wrap.find(".roulette"),
                     wrapW = $wrap.width(),
                     angle = o.angle,
                     angleOffset = o.angleOffset,
                     speed = o.speed,
                     esing = o.easing,
                     itemSize = data.length,
                     itemSelector = "item",
                     labelSelector = "label",
                     d = 360 / itemSize,
                     borderTopWidth = wrapW,
                     borderRightWidth = tanDeg(d);

               for(i=1; i<=itemSize; i+=1){
                  var idx = i-1,
                        rt = i*d + angleOffset,
                        itemHTML = $('<div class="'+ itemSelector +'">'),
                        labelHTML = '';
                        labelHTML += '<p class="'+ labelSelector +'">';
                        labelHTML += '   <span class="text">'+ data[idx].text +'</span>';
                        labelHTML += '</p>';

                  $roulette.append(itemHTML);
                  $roulette.children("."+ itemSelector).eq(idx).append(labelHTML);
                  $roulette.children("."+ itemSelector).eq(idx).css({
                     "left": wrapW / 2,
                     "top": -wrapW / 2,
                     "border-top-width": borderTopWidth,
                     "border-right-width": borderRightWidth,
                     "border-top-color": data[idx].color,
                     "transform": "rotate("+ rt + "deg)"
                  });

                  var textH = parseInt(((2*Math.PI*wrapW)/d)*.5);

                  $roulette.children("."+ itemSelector).eq(idx).children("."+ labelSelector).css({
                     "height": textH+'px',
                     "lineHeight": textH+'px',
                     "transform": 'translateX('+  (textH*1.03) +'px) translateY('+ (wrapW*-.25) +'px) rotateZ('+ (90 + d*.5) +'deg)'
                  });

               }

               function tanDeg(deg) {
                  var rad = deg * Math.PI/180;
                  return wrapW / (1/Math.tan(rad));
               }


               $btnStart.on("click", function() {
                  rotation();
               });

               function rotation() {
                  let arr = ['국밥','갈비','삼겹살','돈까스','치킨','피자','햄버거','일식','중식','한식','패스트푸드'];
                  let n1 =  r(2, 4);
                  let n2 =  r(0, 359)
                  var completeA = 360 * n1 + n2;
                  //var completeA = 360 * 0 + n2;

                  $roulette.rotate({
                     angle: angle,
                     animateTo: completeA,
                     center: ["50%", "50%"],
                     easing: $.easing.esing,
                     callback: function() {
                        var currentA = $(this).getRotateAngle();
                        console.log(n2 / 36);
                        console.log("n1 : "+n1 + " n2:"+n2);
                        
                        console.log(currentA);
                        
                        let index = Math.floor(n2*11/360);
                     
                        console.log(arr[index] + ' '+index);
                        $("#keyword").val(arr[index]);
                        $("#searchForm").submit();
                     },
                     duration: speed
                  });
               }

               function r(min, max) {
                  return Math.floor(Math.random() * (max - min + 1)) + min;
               }

            });
         }
      });
   })(jQuery);

   $(function() {

      $('.box-roulette').roulette();
      
      
      
      $(".text").click(function(){   
         let f = $(this).text();
         $("#keyword").val(f);
         $("#searchForm").submit();
      })
   });
   
      
   </script>
<hr>
   <br>
   <br>
   <br>
  
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
  







</body>
</html>
