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
	<form action="09param-to.jsp">
	이름 : <input type="text" name="name" value="">
	주소 : <input type="text" name="address" value="">
	<input type="submit" value="이동">
	</form>
	<a href="09param-to.jsp">"09param-to.jsp" 이동</a>
</body>
</html>