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
	<%
	String s1 = (String) request.getAttribute("name1");// 못꺼냄
	
	//session.getAttribute()
	String s2 = (String) session.getAttribute("name2");
	%>
	name1 : <%= s1 %>
	name2 : <%= s2 %> <!-- session.getAttribute() -->
	
</body>
</html>