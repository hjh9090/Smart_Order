<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/map.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ef243eba4a37959f8d19524f4e2209e9&libraries=services"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>


<div id="map" style="width:100%;height:350px;"></div>

<!-- <script type="text/javascript">
</script> -->

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