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
	<h1>jstl core if : 조건이 true일때 태그 내의 코드 실행</h1>
	<c:if test="true">
		<h1>if 태드 실행됨</h1>
	</c:if>
	<c:if test="fales">
		<h1>if 태드 실행 안됨</h1>
	</c:if>
</body>
</html>