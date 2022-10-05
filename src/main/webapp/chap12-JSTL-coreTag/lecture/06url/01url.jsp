<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>       
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h3>url 만드는 tag</h3>

	<%-- 
	1.사용자가 클릭한 링크에 쿠키와 비슷한 역할을 하는 세션아이디를 가져오면
	쿠키가 비활성화 되어있어도, 서버가 그 브라우저(client)를 알아본다. 
	
	value 속성에 명시된 url 만들고 출력
	--%>
	<c:url value="02url.jsp"/>
	<br>
	
	<%-- 
	2.request 파라미터 쿼리스트링 생성시 유용하게 씀. 
	--%>
	<c:url value="02url.jsp?name=donald&age=60"></c:url>
	<br>
	<c:url value="02url.jsp">
		<c:param name="name" value="donald"/>
		<c:param name="age" value="60"/>
	</c:url>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>