<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

<%
	String id = (String)request.getParameter("id");
	String password = (String)request.getParameter("password");
	
	if(id.equals(password)){
		session.setAttribute("MEMBER", id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	로그인 성공했습니다.	
	<br><br><br>	
	<a href="sessionLoginCheck.jsp"> 로그인 정보 확인하기 </a>
		
</body>
</html>
<%
	}else{
%>
	<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
	</script>
<%
	}
%>