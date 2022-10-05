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
	
	<c:set var="left" value="3"/> <%-- var : 변수(variable) --%>
	<c:set var="right" value="9"/>
	<p>3</p><p>4</p><p>5</p><p>6</p><p>7</p><p>8</p><p>9</p>
	<hr>
	
	<h1>forEach 태그 활용</h1>
	<%-- url :   ?left=3&right=9     --%> 
	<c:forEach begin="${param.left }" end="${param.right }" var="idx">
		<p>${idx }</p>
	</c:forEach>
</body>
</html>