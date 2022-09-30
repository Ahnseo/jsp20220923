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
	<h1>세션 종료 시키기 ex)로그아웃</h1>
	<p>특정세션지우기: session.removeAttribute(String name)</p>
	<%
	session.invalidate();
	%>
	<a href="04aboutSession.jsp"> 세션 정보 보기</a>
</body>
</html>