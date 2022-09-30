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

<hr>
	<h3>02sub-include.jsp</h3>
	<p>pageContext.getAttribute("page1") : <%= pageContext.getAttribute("page1")%></p>   <%-- null --%>
	<p>request.getAttribute("req1") : <%= request.getAttribute("req1")%></p>   <%-- req attr1 --%>
	<p>session.getAttribute("sess1") : <%= session.getAttribute("sess1") %></p>
	<p>application.getAttribute("app1") : <%= application.getAttribute("app1") %></p>
<hr>	

</body>
</html>