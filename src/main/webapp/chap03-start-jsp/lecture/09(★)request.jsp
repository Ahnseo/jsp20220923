<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> request 기본객체 : 파라미터 역할</h1>
	<%= request %>
	<% System.out.println(request); %>
	
	<p><%= request.getMethod()%></p> 
	<p><%= request.getRequestURI() %></p>
	<br>
	<h1>해더 정보들</h1>
	<p>accept : <%= request.getHeader("Accept")%></p>
	<p>accept encoding : <%= request.getHeader("Accept-Encoding") %></p>
</body>
</html>