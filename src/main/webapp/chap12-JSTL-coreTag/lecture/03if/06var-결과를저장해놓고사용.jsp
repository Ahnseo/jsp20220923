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
	<h3>jstl core if 의 var 속성 : test 결과 저장하는 변수명(attribute 명) </h3>
	<c:if test="${ empty param.name }" var="emptyName">
		<h1>이름을 입력해주세요</h1>
	</c:if>
	
	<c:if test="${not emptyName }">
		<h1>${param.name }님 반갑습니다.</h1>
	</c:if>
</body>
</html>