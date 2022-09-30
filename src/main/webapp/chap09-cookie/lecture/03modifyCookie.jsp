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
	<h1>쿠키값 변경</h1>
	<%
	Cookie cookie = new Cookie("myCookie1", "myCookieValue2");
	 
	response.addCookie(cookie);
	%>
	<a href="01cookie.jsp"> 01cookie.jsp로 가기</a>
	
	<%-- 근데 어차피, 변경될꺼라면, 이미 쿠키가 있는지없는지 확인해보고 변경해야하지 않아 ? --%>
</body>
</html>