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
	<p>이름: ${param.name }</p>
	<p>주소: ${param.address }</p>
	<a href="09param-from.jsp">"09param-from.jsp" 이동</a>
</body>
</html>