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
	<h1>30일 유지되는 쿠키 만들기</h1>
	<%
	Cookie cookie = new Cookie("myCookie2", "myCookieValue2");
	cookie.setMaxAge(30*24*60*60);
	response.addCookie(cookie);	
	%>
	<a href="02cookie-request-getCookies.jsp">쿠키 보러 가기</a>
</body>
</html>