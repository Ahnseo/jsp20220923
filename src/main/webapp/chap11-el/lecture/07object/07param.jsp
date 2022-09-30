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
	<h1> el 기본객체 param </h1>
	<p>request parameter들을 Map으로 저장</p>
	<p> (querySting)name=value   =>  (key,value)으로 param에 넣음</p>
	
	<p><%= request.getParameter("address") %></p>
	<p>${param.address }</p>
	<p>${param["address"] }</p>
</body>
</html>