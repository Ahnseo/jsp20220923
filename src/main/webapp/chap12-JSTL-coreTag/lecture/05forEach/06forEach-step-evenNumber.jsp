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
	<h1>중첩 forEach 태그</h1> 
	<p>구구단 짝수단 만 출력 (2,4,6,8 단 만)</p>
	
	<c:forEach begin="2" end="9" step="2" var="dan">
		<h1>${dan }단</h1>
		<c:forEach begin="1" end="9" var="idx">
			<p>${dan } x ${idx } = ${dan * idx }</p>
		</c:forEach>
		<hr>
	</c:forEach>
	
</body>
</html>