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
	<% 
	Map<String,String> map = Map.of("key1","val1","key2","val2");
	request.setAttribute("myMap", map);
	%>
	<h4>map ,el 사용하기 </h4>
	<p>${myMap.key1 }</p>
	<p>${myMap.key2 }</p>
</body>
</html>