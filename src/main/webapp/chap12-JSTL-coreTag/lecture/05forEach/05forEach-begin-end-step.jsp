<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값을 거꾸로 넣을 수 없음. begin 이 end 보다 클 수 없음 , 당연한 것.</h1>
	<c:forEach begin="9" end="1" var="idx">
		<p>${idx }</p>
	</c:forEach>
	
	<hr>
	
	<h1>begin 은 0 보다 작으면 안됨.</h1>
	<%-- 오류남..
	<c:forEach begin="-10" end="1" var="idx">
		<p>${idx }</p>
	</c:forEach>
	 --%>
	 
	<hr>
	
	<h1>step > 0 (0보다 커야함.)</h1>
	<c:forEach begin="1" end="9" step="2" var="idx" >
		<p>${idx }</p>
	</c:forEach>
	
	<hr>
	 
	 
</body>
</html>