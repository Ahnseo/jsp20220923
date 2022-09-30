<%@page import="javax.print.attribute.standard.PagesPerMinuteColor"%>
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
	<h1> scope : 범위 </h1>
	
	<h2>PageScope, requestScope, sessionScope, applicationScope</h2> 
	<h2>각 영역의 attribute를 저장하고 있는 'Map' !!! </h2>
	<%
	pageContext.setAttribute("pageAttr1", "pageValue1");
	%>
	<p>${pageAttr1 }
	<p>${pageScope.pageAttr1 }</p>
	<p>${pageScope["pageAttr1"] }</p>
	<hr>
	<%
	pageContext.setAttribute("page Attr2", "pageValue2");
	%>
	<p>${pageScope["page Attr2"] }</p>
	<hr>
</body>
</html>