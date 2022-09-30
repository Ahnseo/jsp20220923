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
	<h1>내가 원하는 cookie를 response에 담아서 보내기</h1>
	JEE api httpServletResponse -> addCookie(Cookie cookie) 
	Cookie 클래스의 field: (String)name, (String)value 쌍으로 만들어야함.<br>
	
	<%
	Cookie cookie = new Cookie("my-cookie1", "my-value1");
	response.addCookie(cookie);
	
	%>
	
	-> 보낸 쿠키는 . 다른 브라우저에서 request로 읽음.
	
	
	
	
</body>
</html>