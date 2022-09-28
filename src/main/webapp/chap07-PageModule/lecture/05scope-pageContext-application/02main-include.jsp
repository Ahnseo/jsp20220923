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
	<h1>Attribute 적용해보기</h1> 	
	<%
	pageContext.setAttribute("page1", "page attr1");
	request.setAttribute("req1", "req attr1");
	session.setAttribute("sess1", "sess attr1");
	application.setAttribute("app1", "app attr1");
	%>
	
	<div>
	<jsp:include page="02sub-include.jsp"></jsp:include>
	</div>
	
	<h2>02main-include.jsp</h2>
	<p>pageContext.getAttribute("page1") : <%= pageContext.getAttribute("page1")%></p>
	<p>request.getAttribute("req1") : <%= request.getAttribute("req1")%></p>
	<p>session.getAttribute("sess1") : <%= session.getAttribute("sess1") %></p>
	<p>application.getAttribute("app1") : <%= application.getAttribute("app1") %></p>
	
</body>
</html>