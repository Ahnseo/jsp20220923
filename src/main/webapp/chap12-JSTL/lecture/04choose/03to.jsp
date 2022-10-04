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
	<c:choose>
		<c:when test="${param.genre == 'comedy' }">
			<h1>두사부일체</h1>
		</c:when>
		<c:when test="${param.genre == 'family' }">
			<h1>국제시장</h1>
		</c:when>
		<c:when test="${param.genre == 'action' }">
			<h1>모가디슈</h1>
		</c:when>
		<c:otherwise>
			<h1>장르를 선택해주세요.</h1>	
		</c:otherwise>
	</c:choose>
	<a href="03from.jsp">돌아가기</a>
</body>
</html>