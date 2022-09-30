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
	Map <String,String> map = (Map <String,String>) request.getAttribute("address");
	%>
	<h>trump = <%=map.get("trump") %></h> <br>
	<h>donald= <%=map.get("donald") %></h> <br>
	
	<%-- el 코드 --%>
	<h>trump = ${address.trump }</h> <br>
	<h>donald= ${address.donald }</h> <br>
	
</body>
</html>