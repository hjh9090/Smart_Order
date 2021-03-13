<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${res_name}</title>
</head>
<body>
	<table border="1" width="100%" height="600px">

		<tr>
			<td align="center">
			<form action="gopay" method = "POST">
			<c:forEach var="m" items="${menus}">
					<table border="1" width="600px" height="350px">
						<tr>
							<td rowspan="5" width="300px" align="center"><img
								src="${m.m_picture}" style="width: 300px; height: 300px"></td>
						</tr>
						<tr>
							<td align="center"><h3>${m.m_name}</h3></td>
						</tr>
						<tr>
							<td align="center"><h3>${m.m_price}원</h3></td>
						</tr>
						<tr>
							<td align="center"><select id="quan" name = "quan">
									<option>수량을 선택하세요</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
							</select><button>장바구니</button></td>
						</tr>
						<tr>
							<td align="center"><button><img src = "https://developers.kakao.com/tool/resource/static/img/button/pay/payment_icon_yellow_small.png"></button></td>
						</tr>
					</table>
					<input type = "hidden" value = "${m.m_name}" name = "name">
					<input type = "hidden" value ="${m.m_price}" name = "price">
				</c:forEach>
				<input type = "hidden" value = "${res_name}" name = "res_name">
				</form>
				</td>
		</tr>

	</table>
</body>
</html>