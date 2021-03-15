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
#rreg {
	position: fixed;
	left: 20px;
	top: 300px;
}

#content {
	position: absolute;
	left: 420px;
	top: 200px;
}
</style>
</head>
<body>

${r}

	<table>
		<tr>
	
			<td>
				<h3>${r}</h3>
				<div id="rreg">
				<form action="ReviewSearchController">
					<div>
						<input name="rsc">
						<button>검색</button>
					</div>
				</form><p>
				
					<form action="reg.review" method="post"
						enctype="multipart/form-data">
						<table border="1">
							<tr>
								<td>리뷰내용</td>
								<td><input type="text" name="r_content"></td>
							</tr>
							<tr>
								<td>리뷰사진</td>
								<td><input type="file" name="r_picture"></td>
							</tr>
							<tr>
								<td colspan="2"><button>등록</button></td>
							</tr>
						</table>
						<input type="hidden" name="r_num" value="${r_num}">
					</form>
				</div>

				

				<div id="content">
				
					<c:forEach var="r" items="${reviews}">
						<table border="1" width="400px" height="150px">
							<tr>
								<td>${r.r_num}&nbsp;</td>
								<td><fmt:formatDate value="${r.r_date}" dateStyle="short" /></td>
								<td>${r.r_id}&nbsp;</td>
								<td>${r.r_content}&nbsp;</td>
								<td><img src="resources/img/${r.r_picture}">&nbsp;</td>

								<%-- 
				<td><button onclick="location.href='MovieUpdateController?no=${m.m_no}'">수정</button></td><hr>
				<td><button onclick="updateMovie('${m.m_title}','${m.m_actor}','${m.m_story}','${m.m_no}');">수정2(js)</button></td><hr>
				<td><button onclick="location.href='MovieDeleteController?no=${m.m_no}'">삭제</button></td>
				<td><button onclick="deleteMovie('${m.m_no}')">삭제2(js)</button></td> --%>
							</tr>
						</table>
					</c:forEach>
				</div>

			
		
	</table>
































</body>
</html>