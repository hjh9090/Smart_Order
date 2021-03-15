<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
</style>
<meta charset="UTF-8">
<title>밥 먹으러 GO!</title>

<!-- BootStrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name = "google-signin-client_id" content = "414429822888-7neu48e5nudefscmm42ega9hts2duc9o.apps.googleusercontent.com">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.80.0">
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">
 
    <!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

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

<header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">Notice!</h4>
          <p class="text-muted">밥 먹으러 GO!가 베타서비스를 시작 하였습니다!</p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">메뉴</h4>
          <ul class="list-unstyled">
            <li><a href="map.go" class="text-white">주문하러 가기</a></li>
            <li><a href="review" class="text-white">리뷰 게시판</a></li>
            <li><a href="login" class="text-white">로그인</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container">
      <a href="#" class="navbar-brand d-flex align-items-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24">
        <path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
        <strong>밥 먹으러 GO!</strong>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>



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

<div id="sinput" align="center">
<input id="search" type="text" style="font-family: 'BMJUA';"  autofocus="autofocus" placeholder=" 찾으시는 지역명을 입력하세요!">
<button style="font-family:'BMJUA';" id = "btn">검색</button>
</div>
<br>
<br>
<br>
<br>
<br>
<br>

<footer class="text-muted py-5">
  <div class="container">
    <p class="float-end mb-1">
<!--       <a href="#">Back to top</a> -->
    </p>
    <p class="mb-1">밥 먹으러 Go!  &copy; (주)솔데스크 종로 본원에 있는 SBT교육과정의 4팀에서 만든 프로젝트 입니다.</p>
    <p class="mb-0">솔데스크 홈페이지 : <a href="https://soldesk.com/index.asp">link of Soldesk</a> SoftBankTechnology : <a href="https://www.softbanktech.co.jp/">link of SBT</a></p>
  </div>
</footer>


<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>


</body>
</html>