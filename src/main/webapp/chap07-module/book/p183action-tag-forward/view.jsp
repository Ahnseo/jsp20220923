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

<%
	String code = request.getParameter("code");
	String viewPageURL = null;

	if(code.equals("A")){
		viewPageURL = "a.jsp";
	}else if(code.equals("B")){
		viewPageURL = "b.jsp";
	}else if(code.equals("C")){
		viewPageURL = "c.jsp";
	}
%>
<%-- 같은 폴더 안의 상대경로 --%>
<jsp:forward page="<%= viewPageURL %>"></jsp:forward>

</body>
</html>