<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#asdasd {
	float: right;
	margin: 40px;
}
</style>
<script type="text/javascript" src="resources/menu.js"></script>
</head>
<body>

	<table border="1" width="100%" height="600px" >
		
		<tr>
		<td>
			<c:forEach var="m" items="${menus}">
				<table id="asdasd" border="1">
					<tr>
						<td align="center" width="60px"><a href="updatemenu.go?m_num=${m.m_num}">${m.m_num}</a></td>
				
					</tr>
					<tr>
						<td align="center" width="200px"><img src="resources/menuimg/
							${m.m_picture}" style="width: 120px; height: 120px"></td>
					</tr>
					<tr>
						<td align="center" width="80px">${m.m_name}</td>
					</tr>
					<tr>
						<td align="center" width="130px"><fmt:formatNumber
								value="${m.m_price}" type="currency" /></td>
					</tr>
					<tr>
						<td align="center" width="80px">${m.m_quan}
						<button onclick="deleteMenu('${m.m_num}')">메뉴삭제</button></td>
					</tr>
				</table>

			</c:forEach>
		</td>
		</tr>

	</table>
	<form action="regMenu.go">
	<button>메뉴등록</button>
	</form>




</body>
</html>