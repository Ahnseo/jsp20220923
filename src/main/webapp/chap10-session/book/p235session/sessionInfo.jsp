<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%@ page session="true" %>   페이지 기본값이 true 임.  --%>
<%@ page import="java.util.*" %>   
<%@ page import="java.text.SimpleDateFormat" %>
 
<% request.setCharacterEncoding("utf-8"); %>    
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션정보</title>
</head>
<body>
	
	세션 id : <%= session.getId() %> <br>
	
	<% time.setTime(session.getCreationTime()); %>
	세션 생성 시간 : <%= formatter.format(time) %> <br> 
		
	<% time.setTime(session.getLastAccessedTime()); %>
	최근 접근 시간 :<%= formatter.format(time) %> <br>
	 
</body>
</html>