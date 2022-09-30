<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	pageContext.setAttribute("people", "사람들");
	request.setAttribute("people", Map.of("bts", "지민", "bp", "제니" ));
	%>
	
	<p>${requestScope.people.bts }</p> <%-- 출력 : 지민  --%>
	<p>${requestScope.people.bp }</p>  <%-- 출력 : 제니 --%>
	
	
</body>
</html>