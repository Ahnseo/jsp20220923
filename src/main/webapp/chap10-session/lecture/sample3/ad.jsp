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
	
	<!-- session 정보를 공유해서 광고 표시 -->
	<%
	String q = (String)session.getAttribute("q");
	if( q!=null && !q.isBlank()){
	%>
	<p><%=q %> 광고입니다.</p> 
	<%	
	}else{
	%>
	<p>일반광고입니다.</p> 
	<%
	}
	%>
		
</body>
</html>