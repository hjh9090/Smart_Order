<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>SoppingCart</title>
</head>
<body>
	<c:forEach items="${shopping}" var="goods">
	Name : ${goods.name}, Price : ${goods.price}, Quan : ${goods.quan }  
	<br />
	</c:forEach>
	<br>
	<br>
	<h1>Add Cart</h1>
	<form method="post" action="add">
		Name : <input type="text" name="name"><br> 
		Price : <input type="text" name="price"><br> 
		Quan : <input type="text" name="quan">
		<button>Add Goods</button>
	</form>
</body>
</html>
