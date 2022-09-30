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
	int x = 5;
	int y = 3;
	request.setAttribute("num1", x);
	request.setAttribute("num2", y);
	%>
	<jsp:forward page="07to.jsp"></jsp:forward>
</body>
</html>