<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>scope 속성으로 영역 지정</h1>
	<c:set var="attr1" value="spring" scope="page"/> <%-- scope 기본값 page --%>
	<c:set var="attr1" value="html" scope="request"/>
	<c:set var="attr1" value="css" scope="session"/>
	<c:set var="attr1" value="sql" scope="application"/>
	
	<p>${pageScope.attr1 }</p>
	<p>${requestScope.attr1 }</p>
	<p>${sessionScope.attr1 }</p>
	<p>${applicationScope.attr1 }</p>
	
</body>
</html>