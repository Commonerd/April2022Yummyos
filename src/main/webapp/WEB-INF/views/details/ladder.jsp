<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>룰렛</title>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
html, body, button {
	font-family: Arial, "돋움", Dotum, "굴림", Gulim, "Apple SD Gothic Neo",
		AppleGothic, sans-serif;
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






<p class="title">종류를 고민하는 그대에게 선택을</p>

<div class="box-roulette">
	<div class="markers"></div>
	<button type="button" id="btn-start">
		야미요<br>오늘 뭐먹지??<br>click
	</button>
	<div class="roulette" id="roulette"></div>
	
	
	
	

	
	
	
	
</div>
<h3>결과를 아래 검색창에 넣어주세요</h3>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

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
								labelHTML += '	<span class="text">'+ data[idx].text +'</span>';
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
						let arr = ['패스트푸드','국밥','갈비','삼겹살','돈까스','치킨','피자','햄버거','일식','중식','한식'];
						let n1 =  r(5, 9);
						let n2 =  r(0, 360)
						//var completeA = 360 * n1 + n2;
						var completeA = 360 * 0 + n2;

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
								
								let index = Math.ceil(n2/36);
							
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








</body>
</html>

