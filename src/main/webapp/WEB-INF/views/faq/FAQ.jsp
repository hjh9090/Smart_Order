<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
	 	<title>FAQ</title>
	</head>
	<body>
	
		<div id="root">
			<header>
				<h1>FAQ</h1>
			</header>
			 
			<nav>
			  글 작성
			</nav>
				
			<section id="container">
				<form role="form" method="post" action="/faq/faq">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea id="content" name="content" ></textarea>
								</td>
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
		</div>
	</body>
</html>