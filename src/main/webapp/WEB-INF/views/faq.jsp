<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>FAQ</title>
</head>
<body>

	<div id="root">
		<header>
			<h1>FAQ</h1>
		</header>
		<c:if test="${sessionScope.Naver_id != null}">
			<nav>글 작성</nav>
			<section id="container">
				<form method="post" action="regfaq">
					<table>
						<tbody>
							<tr>
								<td><label for="title">제목</label><input type="text"
									id="title" name="title" /></td>
							</tr>
							<tr>
								<td><label for="content">내용</label>
								<textarea id="content" name="content"></textarea></td>
							</tr>
							<tr>
							<tr>
								<td>
									<button type="submit">작성</button>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</section>
		</c:if>
		<c:forEach var="list" items="${list}">
			<table>
				<tr>
					<td>${list.faq_f}</td>
				</tr>
				<tr>
					<td>${list.faq_q}</td>
				</tr>

			</table>

		</c:forEach>






	</div>
</body>
</html>