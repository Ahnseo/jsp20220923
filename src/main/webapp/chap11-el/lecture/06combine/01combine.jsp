<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	List<Book> list = new ArrayList<>();
	list.add(new Book("java",300));
	list.add(new Book("css",500));
	list.add(new Book("JSP",1000));
	
	request.setAttribute("books", list);
	%>	
	<p>${books[0].title } = ${books[0].price }</p>
	
	<p>${books[1].title } = ${books[1].price }</p>
	
	<p>${books[2].title } = ${books[2].price }</p>
	
	
</body>
</html>