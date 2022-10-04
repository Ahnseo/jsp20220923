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
	<h1>choose-when-otherwise: 자바의 if, else if, else와 유사</h1>
	<c:choose>
	 	<%-- true일때, 실행/출력 --%>
		<c:when test="false"> 
			<h3>출력1 됨?</h3>
		</c:when>
		<c:when test="false">
			<h3>출력2 됨??</h3>
		</c:when>
		<c:when test="false">
			<h3>출력3 됨???</h3>
		</c:when>
		<%-- when태그가 모두 false일 때 실행/출력 --%>
		<c:otherwise>
			<h3>모두 false 이면 출력!!</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>