<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*, jsp20220923.chap07.*"%>      

<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Book> list = List.of(new Book("spring",100), new Book("sql",300));
	request.setAttribute("books", list);
	%>
	
	<jsp:include page="11sub.jsp"></jsp:include>
	
	
</body>
</html>