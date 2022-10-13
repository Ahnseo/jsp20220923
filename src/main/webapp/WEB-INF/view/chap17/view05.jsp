<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>       
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h1>bookListResult</h1>
	<%-- 
		Servlet05 
		bookList attribute를  request에 넣어서 
		view05.jsp 로 forward .
	 --%>
	<div>
		<table class="table" >
			<thead style="background-color: beige; margin: auto;">
				<tr>
					<td>#</td>
					<td>제목</td>
					<td>가격</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookListResult }" var="book" varStatus="st" >
				<tr>
					<td>${st.count }</td>
					<td>${book.title }</td>
					<td>${book.price }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>