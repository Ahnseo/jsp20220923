<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>이미 있는 쿠키만 변경하기</h1>
	<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("myCookie1")) {
		response.addCookie(new Cookie("myCookie1", "myCookieValue3"));
			}
		}
	}
	%>
	<a href="02cookie-request-getCookies.jsp"> 쿠키보러 가기</a>
</body>
</html>