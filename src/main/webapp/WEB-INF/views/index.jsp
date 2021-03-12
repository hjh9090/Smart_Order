<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥 먹으러 GO!</title>
<!--  <script type="text/javascript" src="resources/map.js"></script>-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ef243eba4a37959f8d19524f4e2209e9&libraries=services"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>


<div id="map" style="width:100%;height:350px;"></div>
<script type="text/javascript">
//제이 쿼리를 사용하기 위한 함수 준비
$(function () {
   $('#btn').on('click', function () {
      onFunc();
   });
});

function onFunc() {
	   var keyword = $('#search').val();
	   var category = $('#category').val();
	   // console.log(keyword);
	   var searchResult = keyword + category ;
	   init(searchResult);
	}


//마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(); 

//키워드로 장소를 검색합니다
function init(searchResult) {
   ps.keywordSearch(searchResult, placesSearchCB); 
}

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) { //서버와 통신이 성공한다면

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}


</script> 

<select id="category">
<option  value="daiso">다이소</option>
<option value="starbucks">스타벅스</option>
<option value="gs25">gs25</option>
</select>

<input type="text" id="search">
<button id="btn">검색</button>

<table width="100%" border="1">
<tr><td>Web Smart Order</td></tr>

</table>


</body>
</html>