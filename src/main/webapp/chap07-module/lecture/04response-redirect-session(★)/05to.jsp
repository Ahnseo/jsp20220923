<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>05to.jsp</h1>
	<%-- <%request.getParameter("name");%> --%>
	<%=request.getParameter("name") %>
	<%=request.getParameter("age") %>
</body>
</html>