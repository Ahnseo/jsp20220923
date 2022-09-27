<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1 부터 10 까지 합은</h1>
	<%
	int sum = 0;
	for(int i = 1; i <= 10; i++ ){
		sum += i;
	}
	%>
	<h2><%= sum %> 입니다.</h2>
	<h2><%= 1+2+3+4+5+6+7+8+9+10 %></h2>
	
</body>
</html>