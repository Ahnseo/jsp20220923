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
	<h1>여러개 음식을 골라서 보내면, paramValues(String, String[])  </h1>
	<hr>
	<p>이름 : ${param.name }</p>
	<p>param.food : ${param.food }</p> <%-- 1개의 값만 받음. --%>
	
	<p>체크한 여러 음식</p>
	<p>${paramValues.food[0] }</p>
	<p>${paramValues.food[1] }</p>
	<p>${paramValues.food[2] }</p>
	<p>${paramValues.food[3] }</p>
	<p>${paramValues.food[4] }</p>
	
	<a href="11param-from.jsp"> 돌아가기</a>
</body>
</html>