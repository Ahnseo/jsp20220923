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
	<h1>getAttribute -> el </h1>
	
	<%	
	request.setAttribute("myAttr1", "myValue1");
	%>
	<%
	Object o =	(Object)request.getAttribute("myAttr1");
	String s = (String) o;
	%>
	<p> <%= s%></p>
	<p>${myAttr1 }</p>
</body>
</html>