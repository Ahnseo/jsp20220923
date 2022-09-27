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
	<h1>42번 파일을 ->43번 파일로 보내고 싶다. 42번파일 코드 참고</h1>
	<%= request.getParameter("age") %>
</body>
</html>