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
	pageContext.setAttribute("myName", "유재석");
	request.setAttribute("myName", "김종국");
	
	pageContext.setAttribute("your Name", "강호동");
	request.setAttribute("99name", "지석진");
	%>
	
	<p>${myName }</p> <%-- 같은 이름으로 저장될때, 가장 작은영역(page)부터 찾아나감. 그래서 그냥 썼음.--%>
	<p>${pageScope.myName }</p>
	<p>${requestScope.myName }</p>
	
	<p>${pageScope["your Name"] }</p> <%-- 띄어쓰기 된 attr 이름 --%>
	<p>${requestScope["99name"] }</p> <%-- 숫자로 시작 된 attr 이름 --%>
	
</body>
</html>