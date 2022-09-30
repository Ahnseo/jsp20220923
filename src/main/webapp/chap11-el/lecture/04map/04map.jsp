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
	<%--map 이라는 이름의 Map타입 attribute 추가--%>
	<% 
	Map<String, String> map = new HashMap<>();
	map.put("abc", "marvel");
	map.put("my key", "hurk");
	map.put("마블", "토르");
	map.put("2", "panther");
	
	request.setAttribute("map", map);
	
	//<p>${map["my key"] }</p>
	pageContext.setAttribute("def", "마블");
	%>
	
	<p>${map.abc }</p>
	<p>${map["my key"] }</p>
	<p>${map[def] }</p>
	<p>${map["2"] }</p>
</body>
</html>







