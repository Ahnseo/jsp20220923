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
	<h1>쿠키 읽기 request.getCookies() -> return Cookie[] 배열로 리턴함</h1>

	<%
	String value1 = "";
	String value2 = "";
	String sessionId = "";
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if(cookie.getName().equals("myCookie1")){
				value1 = cookie.getValue();
			}
			if(cookie.getName().equals("myCookie2")){
				value2 = cookie.getValue();
			}
			if (cookie.getName().equals("JSESSIONID")) {
				sessionId = cookie.getValue();
			}
		}
	}
	%>
	
	myCookie1 = <%= value1 %> <br>
	myCookie2 = <%= value2 %> <br>
	JSESSIONID = <%= sessionId %>
</body>
</html>