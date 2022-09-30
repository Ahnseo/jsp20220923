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
	<h1>세션에서 꺼낸 임의의 수</h1>
	<h1><%= session.getAttribute("random number") %></h1>
	<p>서로다른세션이기때문에 값을 못꺼냄</p>
	<p>그런데, 쿠키를 사용하면 ! session.getAttribute() 가능하다.</p>
	<%-- session을 더 공부하자. cookie는 회사에서 잘 쓰지않는 경우가 많다나..? --%>
</body>
</html>