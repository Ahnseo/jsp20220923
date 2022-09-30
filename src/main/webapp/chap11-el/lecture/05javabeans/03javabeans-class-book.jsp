
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jsp20220923.chap07.*"%>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	Book book1 = new Book("java", 1000);
	Book book2 = new Book("css", 2000);
	
	request.setAttribute("book1", book1);
	request.setAttribute("book2", book2);
	%>
	
	<%-- el코드를 사용하면, 형변환없이 쉽게 값을 얻을 수 있음. --%>
	<p>${book1.title }</p>
	<p>${book1.price }</p>
	<p>${book2.title }</p>
	<p>${book2.price }</p>
</body>
</html>