<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Map - El 코드사용하기</title>
</head>
<body>
	<% 
	Map<String, String> map = new HashMap<>();
	map.put("x", "10");
	map.put("y", "A");
	map.put("z", "B");
	
	request.setAttribute("map1", map);
	%>

	<p>${map1.x }</p>
	<p>${map1.y }</p>
	<p>${map1.z }</p>
</body>
</html>