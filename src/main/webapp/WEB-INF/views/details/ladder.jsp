<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>


  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
          
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�귿</title>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">


html, body, button {
	font-family: Arial, "����", Dotum, "����", Gulim, "Apple SD Gothic Neo",
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


.parent{
    width: 90%;
    margin: 10px auto;
    overflow: hidden;
}
.box-roulette {
    border: 1px solid red;
	float:left;
    width:30%;
    box-sizing: border-box;
}
.map_wrap{
	left:550px;
    border: 1px solid green;
    /* flex:1; */
    margin: 0px 5%;
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
	top:-30px;
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
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'����',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:60%;height:500px;}
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
  <a class="navbar-brand" href="/">����</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/details/ladder">���� ������?<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/store/list">����â��</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/board/notice/list">��������</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          �׸���������
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/">�̵����</a>
          <a class="dropdown-item" href="#">Ǫ�彺�丮</a>
        </div>
      </li>
    </ul>
       <div id="search">
   <form class="form-inline my-2 my-lg-0" action="/all/search">
      <c:forEach items="${search}" var="search">
         <a href="/search/search?search=${search}">${search}</a>
      </c:forEach>
         <br>
         <input name="search" id="search" type="search" style="width: 800px;" class="form-control mr-sm-2" placeholder="���Ͻô� �޴��� �Է����ּ���" aria-label="Search">
      <input type="submit" value="�˻�" class="btn btn-outline-success my-3 my-sm-0" style="color:black;border-color:black;" aria-label="Search">
   </form>
</div>
 <a href="loginform" id="login" class="btn btn-primary" style="width:100px; height:55px;">�α���</a>
 <a href="/insert" id="join" class="btn btn-primary" style="width:120px; height:55px;">ȸ������</a>

  </div>
</nav>





<h4><span style="float:left;width:38%;"class="badge rounded-pill bg-warning text-dark">���Ʒ� �귿��ư�� Ŭ�����ּ�����</span></h4>
<h4><span style="float:right;width:60%;"class="badge rounded-pill bg-warning text-dark">�Ʒ� �������� ���Ͻô� ������ ã�ƺ�����</span></h4>
<div class= parent> 
<div class="box-roulette">
	<div class="markers"></div>
	<button type="button" id="btn-start">
		�߹̿�<br>���� ������??<br>click
	</button>
	<div class="roulette" id="roulette"></div>
	
</div>

<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:absolute;overflow:hidden;"></div>

    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>
                <form id="searchForm" onsubmit="searchPlaces(); return false;">
                    Ű���� : <input type="text" value="���¿� ����" id="keyword" size="15"> 
                    <button type="submit">�˻��ϱ�</button> 
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
// ��Ŀ�� ���� �迭�Դϴ�
var markers = [];

var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };  

// ������ �����մϴ�    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// ��� �˻� ��ü�� �����մϴ�
var ps = new kakao.maps.services.Places();  

// �˻� ��� ����̳� ��Ŀ�� Ŭ������ �� ��Ҹ��� ǥ���� ���������츦 �����մϴ�
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// Ű����� ��Ҹ� �˻��մϴ�
searchPlaces();

// Ű���� �˻��� ��û�ϴ� �Լ��Դϴ�
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('Ű���带 �Է����ּ���!');
        return false;
    }

    // ��Ұ˻� ��ü�� ���� Ű����� ��Ұ˻��� ��û�մϴ�
    ps.keywordSearch( keyword, placesSearchCB); 
}

// ��Ұ˻��� �Ϸ���� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // ���������� �˻��� �Ϸ������
        // �˻� ��ϰ� ��Ŀ�� ǥ���մϴ�
        displayPlaces(data);

        // ������ ��ȣ�� ǥ���մϴ�
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('�˻� ����� �������� �ʽ��ϴ�.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('�˻� ��� �� ������ �߻��߽��ϴ�.');
        return;

    }
}

// �˻� ��� ��ϰ� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // �˻� ��� ��Ͽ� �߰��� �׸���� �����մϴ�
    removeAllChildNods(listEl);

    // ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // �˻� ��� �׸� Element�� �����մϴ�

        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
        bounds.extend(placePosition);

        // ��Ŀ�� �˻���� �׸� mouseover ������
        // �ش� ��ҿ� ���������쿡 ��Ҹ��� ǥ���մϴ�
        // mouseout ���� ���� ���������츦 �ݽ��ϴ�
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

    // �˻���� �׸���� �˻���� ��� Element�� �߰��մϴ�
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
    map.setBounds(bounds);
}

// �˻���� �׸��� Element�� ��ȯ�ϴ� �Լ��Դϴ�
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

// ��Ŀ�� �����ϰ� ���� ���� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // ��Ŀ �̹��� url, ��������Ʈ �̹����� ���ϴ�
        imageSize = new kakao.maps.Size(36, 37),  // ��Ŀ �̹����� ũ��
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // ��������Ʈ �̹����� ũ��
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // ��������Ʈ �̹��� �� ����� ������ �»�� ��ǥ
            offset: new kakao.maps.Point(13, 37) // ��Ŀ ��ǥ�� ��ġ��ų �̹��� �������� ��ǥ
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // ��Ŀ�� ��ġ
            image: markerImage 
        });

    marker.setMap(map); // ���� ���� ��Ŀ�� ǥ���մϴ�
    markers.push(marker);  // �迭�� ������ ��Ŀ�� �߰��մϴ�

    return marker;
}

// ���� ���� ǥ�õǰ� �ִ� ��Ŀ�� ��� �����մϴ�
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// �˻���� ��� �ϴܿ� ��������ȣ�� ǥ�ô� �Լ��Դϴ�
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // ������ �߰��� ��������ȣ�� �����մϴ�
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

// �˻���� ��� �Ǵ� ��Ŀ�� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
// ���������쿡 ��Ҹ��� ǥ���մϴ�
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // �˻���� ����� �ڽ� Element�� �����ϴ� �Լ��Դϴ�
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
						{ color: '#3f297e', text: '�ѽ�' },
						{ color: '#1d61ac', text: '�߽�' },
						{ color: '#169ed8', text: '�Ͻ�' },
						{ color: '#209b6c', text: '�ܹ���' },
						{ color: '#60b236', text: '����' },
						{ color: '#efe61f', text: 'ġŲ' },
						{ color: '#f7a416', text: '���' },
						{ color: '#e6471d', text: '����' },
						{ color: '#dc0936', text: '����' },
						{ color: '#e5177b', text: '����' },
						{ color: '#881f7e', text: '�н�ƮǪ��' }
						
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
						let arr = ['�н�ƮǪ��','����','����','����','���','ġŲ','����','�ܹ���','�Ͻ�','�߽�','�ѽ�'];
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

</div>






</body>
</html>

