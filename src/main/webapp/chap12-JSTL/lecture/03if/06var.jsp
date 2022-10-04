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
	<c:if test="${not empty param.name && not empty param.address }" var="hasNameAndAddress">
		<p>${param.name }님의 주소는 ${param.address }입니다.</p>
	</c:if>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti illum odit cumque fugiat voluptatum inventore odio minima veritatis id praesentium fugit dicta quasi repellendus sit nihil eveniet libero rerum aliquid?</p>
	
	<c:if test="${hasNameAndAddress }">
		<p>이름과 주소가 모두 있습니다.</p>
	</c:if>
</body>
</html>