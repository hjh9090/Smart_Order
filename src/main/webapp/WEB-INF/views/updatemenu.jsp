<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="updatemenu.do" method="get">
메뉴이름 수정<input name="udmn">
가격 수정<input name="udprice">
메뉴번호<input name="m_num" value="${param.m_num}" type="hidden">
<button>수정</button>
</form>
</body>
</html>