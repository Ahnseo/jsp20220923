<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>param</h1>
	<p>이름:${param.n }</p>
	<h1>paramValues 체크한 목록</h1>
	<p>${paramValues.heros[0] }</p>
	<p>${paramValues.heros[1] }</p>
	<p>${paramValues.heros[2] }</p>
	<p>${paramValues.heros[3] }</p>
	<p>${paramValues.heros[4] }</p>
	
	<a href="12paramValues-from.jsp"> 돌아가기</a>
	
</body>
</html>