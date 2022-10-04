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
	<c:if test="true">
		<p>무조건 실행</p>
	</c:if>
	
	<c:if test="${param.name =='bk' }">
		<p>name파라미터의 값이 ${param.name }입니다.</p>
	</c:if>
	
	<c:if test="${param.age >= 18 }">
		<p>나이:${param.age } 당신의 나이는 18세 이상입니다.</p>
	</c:if>
	
</body>
</html>