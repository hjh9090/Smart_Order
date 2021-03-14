<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style type="text/css">
.bodyH3 {
	text-align: center;
	
}

</style>
<title>결제 완료 페이지</title>
</head>
<body>
<p>카카오 페이 결제가 정상적으로 처리 되었습니다.</p>

<h3 class = "bodyH3">가맹점명 : ${user}</h3>
<h3 class = "bodyH3">상품명 :  ${name}</h3>
<h3 class = "bodyH3">가격 : ${price}</h3>
<h3 class = "bodyH3">결제 수단 : ${payment}</h3>
<h3 class = "bodyH3">수량 : ${quantity}</h3>




<form action="map.go" method = "GET">
<button>홈으로</button>

</form>
</body>
</html>