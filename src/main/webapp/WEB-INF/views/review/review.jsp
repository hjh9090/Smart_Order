<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/review.js"></script>
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

td{
padding: 15px;
}

.tdnum{
width: 45px;
}


.tdid{
width:100px; 
}

.tdwrite{
width: 400px;
}



</style>
</head>
<body>



	<table>
		<tr>
	
			<td>
				<div id="rreg">
				<form action="search.review">
					<div>
						리뷰내용 <input name="r_content">
						<button>검색</button>
					</div>
				</form><p>
				
					<form action="reg.review" method="post"
						enctype="multipart/form-data">
						<table border="1">
							<tr>
								<td>리뷰내용</td>
								<td><textarea placeholder="리뷰 내용을 적어주세요!" name="r_content" cols="30" rows="2"></textarea>
								<!--  <input type="text" name="r_content"></td>-->
							</tr>
							<tr>
								<td>리뷰사진</td>
								<td><input type="file" name="r_picture"></td>
							</tr>
							<tr>
								<td colspan="2"><button>등록</button><h3>${r}</h3></td>
							</tr>
						</table>
						
					</form>
					
				</div>

				

				<div id="content" align="center">
				
					<c:forEach var="r" items="${reviews}">
						
						<table border="1"">
						
							<tr>
								<td class="tdnum" align="center">No.${r.r_num}</td>
								<td class="tddate" align="center"><fmt:formatDate value="${r.r_date}" dateStyle="long"/></td>
								<td class="tdid" align="center">${r.r_id}</td>
								<td class="tdimg"><img src="resources/reviewimg/${r.r_picture}" width="120px" height="120px"></td>
								<td class="tdwrite">${r.r_content}</td>
								<td class="tddel"><button onclick="deleteReview('${r.r_num}')">삭제</button><button onclick="updateReview('${r.r_content}','${r.r_num}')">수정</button></td>
							</tr>
						</table>
					</c:forEach>
				</div>

			
		
	</table>
































</body>
</html>