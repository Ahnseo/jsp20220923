<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>      
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	
	<h1>서블릿 dopost->doget->view.jsp</h1>

	<form action="" method="post" >
		제목 : <input type="text" name="title"> <br>
		가격 : <input type="number" name="price" > <br>
		<input type="submit" value="등록">
	</form>
	
	<hr>
		<c:forEach items="${bookList }" var="bookkk" varStatus="status">
		
			<h3> ${status.count}번 책: ${bookkk.title }, ${bookkk.price  }원 </h3>
		
		</c:forEach>

	<p>${sessionScope.message }</p>
	<c:remove var="message" scope="session"/>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>