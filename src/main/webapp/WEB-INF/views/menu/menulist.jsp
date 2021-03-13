<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매뉴 화면</title>
<style type="text/css">
#asdasd {
	float: left;
	margin: 40px;
}
</style>
<script type="text/javascript" src="resources/menu.js"></script>
<script type="text/javascript">
function godetail () {
	location.href = "detail";
}

</script>
</head>
<body>

<a href='map.go'>맵으로</a>

	<table border="1" width="100%" height="600px" >
		
		<tr><td align="center" width="120px" height="80px"><h2>${param.name}</h2></td></tr>
	
			<td>
			<c:forEach var="m" items="${menus}">
				<table id="asdasd" border="1" onclick="location.href = 'detail.go?m_num=${m.m_num}'">
					<tr >
						<td align="center" width="60px"><a href="updatemenu.go?m_num=${m.m_num}">${m.m_num}</a></td>
					</tr>
					<tr>
						<td align="center" width="200px"><img src="${m.m_picture}" style="width: 120px; height: 120px"></td>
					</tr>
					<tr>
						<td align="center" width="80px">${m.m_name}</td>
					</tr>
					<tr>
						<td align="center" width="130px"><fmt:formatNumber
								value="${m.m_price}" type="currency" /></td>
					</tr>
					<%-- <tr>
						<td align="center" width="80px">${m.m_quan}
						
					</tr> --%>
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