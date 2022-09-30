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
	
	Cookie cookie = new Cookie("myCookie1","myCookieValue1");
/* 	response.addCookie(cookie); */
	
	%>
	쿠키 이름 : <%=cookie.getName() %> <br>
	쿠키 값 : <%=cookie.getValue() %>
</body>
</html>