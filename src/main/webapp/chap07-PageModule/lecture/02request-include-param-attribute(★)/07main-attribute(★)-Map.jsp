<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.HashMap" %>    
<%@ page import="java.util.Map" %>     
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>07main</h1>
	
	<%-- map 객체 만들어서 request에 attribute 추가하기 --%>
	<%
	Map <String,String> map = new HashMap<>();
	map.put("name", "seojung");
	map.put("address", "dangsan");
	
	request.setAttribute("myMap", map);
	
	%>
	<jsp:include page="07sub.jsp"></jsp:include>
</body>
</html>