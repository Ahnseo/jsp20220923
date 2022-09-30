<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*"  %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el 을 사용 -> javaBeans 프로퍼티 사용</h1>
	<%--읽기 프로퍼티를 el코드로 사용할수있다.
	
	Book class의  getTitle() 는 title 이라는 프로퍼티 가 있음 
	Book class의  getPrice() 는 price 이라는 프로퍼티 가 있음
	 --%>
	<% 
	Book book = new Book("java", 500);
	request.setAttribute("book1", book);
	%>
	<p>${book1.title }</p>
	<p>${book1.price }</p>
</body>
</html>