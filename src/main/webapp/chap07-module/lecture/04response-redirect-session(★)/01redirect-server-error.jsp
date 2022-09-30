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
	int a=0;
	int b=3;
	int c = b/a;
	%>
	<%=c%>
	<%-- http state code              : 자주 보는 code --%>
	Informational responses (100–199)
	Successful responses (200–299)    :200
	Redirection messages (300–399)    :302 Found 다른 곳으로 요청을 보내라..
	Client error responses (400–499)  :404
	Server error responses (500–599)  :500 
	
	302 Found 다른 곳으로 요청을 보내라.. response.sendRedirect() 사용
	 Therefore, this same URI should be used by the client in future requests.
	
</body>
</html>