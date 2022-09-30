<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"  %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- list라는 이름의 java.util.List 타입의 객체를 attribute에 넣는 코드 작성
	필요하면 다른 attribute도 추가하세요 --%>
	
	<% 
	List <String> list = List.of("아름아","오늘도","파이팅");
	request.setAttribute("list", list);
	
	request.setAttribute("x", 1);
	request.setAttribute("y", "2");
	%>
	<h1>${list[0] }</h1>
	<h1>${list[x] }</h1> <%-- 아름 --%> 
	<h1>${list[y] }</h1> <%-- 파이팅 --%>
</body>
</html>