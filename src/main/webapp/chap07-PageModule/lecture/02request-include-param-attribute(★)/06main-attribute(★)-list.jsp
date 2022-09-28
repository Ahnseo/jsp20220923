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
	<h1>06main</h1>
	<%
	List<String> list = List.of("java", "html", "css");
	%>
	<%-- ★중요★ attribute로 값 전달하기 ★★★ --%>
	<%-- JEE api -> httpServletRequest-> setAttribute
		-> setAttribute()메소드-> getAttribute()로 값얻기 --%>
	<%
	
	request.setAttribute("mylist", list);
	
	%>
	<div>
		<jsp:include page="06sub.jsp"></jsp:include>
	</div>
</body>
</html>