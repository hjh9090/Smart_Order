<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥 먹으러 GO!</title>
<!--  <script type="text/javascript" src="resources/map.js"></script>-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ef243eba4a37959f8d19524f4e2209e9&libraries=services"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/view.css">
<script type="text/javascript" src="resources/map.js"></script>
</head>
<body>

<script>
function categoryChange(e) {
  var food_kf = ["교촌치킨", "얌샘김밥", "원할머니보쌈"];
  var food_cf = ["홍콩반점", "이비가짬뽕", "짬뽕지존"];
  var food_jf = ["돈돈정", "미소야", "역전우동"];
  var food_df =["투썸플레이스", "할리스커피", "스타벅스"];
  var target = document.getElementById("food");


  if(e.value == "kf") var d = food_kf;
  else if(e.value == "cf") var d = food_cf;
  else if(e.value == "jf") var d = food_jf;
  else if(e.value == "df") var d = food_df;
  target.options.length = 0;
 
  for (x in d) {
    var opt = document.createElement("option");
    opt.value = d[x];
    opt.innerHTML = d[x];
    target.appendChild(opt);
  } 
}
</script>





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
	   var food = $('#food').val();
	   // console.log(keyword);
	   
	   var searchResult = food + keyword;
	   
		   
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
            
           console.log(data[i]);
            
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
        
        var pName=place.place_name;
        console.log(pName);
        goToBack(pName);
    });
}


function goToBack(pName){
	$.ajax({
		url:"getcategory.do",
		type: "get",
		datatype :"text",
		data:{name:pName},
		
		success : function(result){
			alert(pName);
 			location.href = "getcategory.do?name=" + pName;
		},
		error: function(e){
			alert(JSON.stringify(e));
		}
		
	});
}
</script> 

<h1 class="bapgo" align="center">4팀 밥먹으러GO!</h1>




<br>
<div align="center" class="selectdiv">
<select style="font-family: 'BMJUA';" id="category" onchange="categoryChange(this)">
  <option>음식을 선택하세요</option>
  <option value="kf">한식</option>
  <option value="cf">중식</option>
  <option value="jf">일식</option>
  <option value="df">카페</option>
</select>
 
<select id="food" style="font-family:'BMJUA';">
<option>메뉴를 선택하세요</option>
</select>
</div>

<div id="sinput">
<input id="search" type="text" style="font-family: 'BMJUA';"  autofocus="autofocus" placeholder=" 찾으시는 지역명을 입력하세요!">
<button style="font-family:'BMJUA';" id = "btn">검색</button>
</div>

 


</body>
</html>