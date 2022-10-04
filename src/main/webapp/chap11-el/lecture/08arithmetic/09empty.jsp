<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	empty 연산자 <br> 
	빈문자열, null, 길이가 0 인배열/List/Set/Map 일때, true <br>
	<%
	pageContext.setAttribute("attr1", ""); //빈문자열 넣기
	pageContext.setAttribute("attr2", new String[]{}); //길이가 0 인 스트링 배열 넣어보기
	pageContext.setAttribute("attr4", Set.of());
	pageContext.setAttribute("attr5", List.of());
	pageContext.setAttribute("attr6", Map.of());
	%>
	
	<p>${ empty attr1 }</p>
	<p>${ empty attr2 }</p>
	<p>${ empty attr3 }</p> <%-- attr3 은 null  --%>
	<hr>
	<p>${ empty attr4 }</p>
	<p>${ empty attr5 }</p>
	<p>${ empty attr6 }</p>
</body>
</html>