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
	<%= request.getParameter("age") %>
	<%= request.getParameter("email") %>
	
	<%-- ?age=30&email=asd@com --%>
	<p>${param.age }</p>
	<p>${param.email }</p>
</body>
</html>