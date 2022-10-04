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
	<%-- 구구단 출력 --%>
	<%-- request parameter 'dan' 을 사용해서 출력 --%>
	
	<form action="03forEach-exam.jsp"> <%-- 현재 페이지로. --%>
		<input type="number" name="dan">
		<input type="submit" value="출력">
	</form>
	
	<h3>구구단 ${param.dan }단 출력</h3>
	
	<hr>
	<c:choose>
		<c:when test="${ !empty param.dan }">
			<c:forEach begin="1" end="9" var="x"> <%-- var : variable --%>
				<h4>${param.dan } x ${x } = ${param.dan *x }</h4>	
			</c:forEach>
		</c:when>
		
		<c:otherwise>
			<h4>단 수를 입력하세요.</h4>
		</c:otherwise>
	</c:choose>
</body>
</html>