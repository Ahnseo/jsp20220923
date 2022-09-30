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
	<h1>다른 영역에 같은 이름으로 attribute가 있을경우</h1>
	<h1>좁은 영역부터 찾게 됨!</h1>
	<%
	pageContext.setAttribute("book", "java(pageValue1)");
	request.setAttribute("book", "css(reqValue1)");
	session.setAttribute("book", "JSP(sessValue1)");
	application.setAttribute("book", "HTML(appValue1)");
	
	request.setAttribute("car", "테슬라");
	session.setAttribute("car", "기아");
	%>
	<hr>
	<p>${book }</p>
	<p>${car }</p>
	<hr>
	
	<p>${requestScope.book }</p>
	<p>${sessionScope.book }</p>
	<p>${requestScope.car }</p>
	<p>${sessionScope.car }</p>
	
</body>
</html>