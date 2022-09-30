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
	<h1>setPath로 쿠키 경로 지정하기</h1>
	
	<%
	Cookie cookie = new Cookie("myCookie3", "myCookieValue3");
	//cookie.setPath(String uri); 
	//cookie.setPath("/"); : port번호 뒤로 전부
	/*
		/ : 서버기준
		request.getContextPath() : 서버 내의 어플리케이션 root 
	*/
	cookie.setPath(request.getContextPath());
	response.addCookie(cookie);
	
	%>
</body>
</html>