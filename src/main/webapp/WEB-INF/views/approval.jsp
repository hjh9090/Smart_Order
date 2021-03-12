<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 완료 페이지</title>
</head>
<body>
<p>카카오 페이 결제가 정상적으로 처리 되었습니다.</p>

<h3>가맹점명 : ${user}</h3>
<h3>상품명 :  ${name}</h3>
<h3>가격 : ${price}</h3>
<h3>결제 수단 : ${payment}</h3>
<h3>수량 : ${quantity}</h3>




<form action="kakaopay" method = "GET">
<button>홈으로</button>

</form>
</body>
</html>