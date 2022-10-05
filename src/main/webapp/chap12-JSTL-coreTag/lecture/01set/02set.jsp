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
	<h3>jstl core set : attribute를 추가/변경 하는 태그</h3>
	<c:set var="attr1" value="spring"/> <%-- page영역에 spring 이라는 값의 attr1 attribute를 추가한것임. --%>
	<p>${attr1 }</p>
	
	<c:set var="attr1" value="sql"/>
	<p>${attr1 }</p> <%-- page영역에 sql 이라는 값의 attr1 attribute를 변경한것임. --%>
</body>
</html>