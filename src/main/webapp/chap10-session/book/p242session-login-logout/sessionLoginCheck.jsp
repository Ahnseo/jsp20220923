<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>   

<%
	String memberId = (String) session.getAttribute("MEMBER");
	boolean login = memberId == null ? false : true;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
if(login){
%>
	아이디 <%= memberId %> 로 로그인한 상태입니다.<br>
	<a href="sessionLoginForm.jsp"> 로그인 화면으로 돌아가기 </a><br>
	<a href="sessionLogout.jsp"> 로그아웃 하기 </a>
<%
}else{
%>	
	로그인하지 않은 상태<br>
	<a href="sessionLoginForm.jsp"> 로그인 화면으로 돌아가기 </a><br>
<%
}
%>	

</body>
</html>