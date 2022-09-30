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
	<!-- session에 attribute를 넣는 방법 , 어떤 num을 "random number"라는 명찰을 달아줌
										  또는 어떤 num을 "random number"라는 컨테이너에 저장함
	
	세션은 오직 서버에만 생성한다. 
	
	(서버)세션을 사용하면, 서버에 클라이언트(웹브라우저) 값을 저장한다. 
	
	여러 웹브라우저들에게 session.setAttribute("저장할공간이름", Object o);  값을 공유한다.
	
	
	
	-->
	
	<%
	double num = Math.random();
	session.setAttribute("random number", num);
	%>
	<h1>세션에서 값이 들어감</h1>
	<h1><%= num %></h1>
	
</body>
</html>