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
	<h1>절대경로 와 상대경로</h1>
	<%-- 01url로 가는 상대경로 --%>
	<%-- 01url로 가는 절대경로 --%>
	
	<c:url value="01url.jsp" var="url1"/> <br>
	<c:url value="/chap12-JSTL-coreTag/lecture/06url/01url.jsp" var="url2"/> <br>
	
	<a href="<c:url value="01url.jsp"/>">01url.jsp가기(상대경로)</a> <br>
	<a href="${url1 }">01url.jsp가기(el-상대경로)</a> <br>
	
	<a href="<c:url value="/chap12-JSTL-coreTag/lecture/06url/01url.jsp"/>">01url.jsp가기(절대경로)</a> <br>
	<a href="${url2 }">01url.jsp가기(el-절대경로)</a> <br>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>