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
	<%-- 중첩된 forEach 사용하여, 구구단 2~9단 까지 모두 출력하세요 --%>
	
	<c:forEach begin="2" end="9" var="dan">
		<h2>${dan }단</h2>
		<c:forEach begin="1" end="9" var="idx">
			<p>${dan } x ${idx } = ${dan * idx }</p>
		</c:forEach>
		<hr>
	</c:forEach>
	
</body>
</html>