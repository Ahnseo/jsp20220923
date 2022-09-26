<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>expression 표현식</h1>
	<%
	//스트립트릿 메소드 안의 명령문
	System.out.println("작성된 명령문");
	System.out.println("java 코드 작성 처럼 자유롭게 할 수 있음.");
	%>
	<%-- expression : print 메소드 안의 파라미터 --%>
	<%= "out.print(안에 들어갈 객체)" %> <br>
	<%= "웹페이지에 바로 출력시켜줌" %> <br>
	<%= "안녕"%>
	<%= "JSP" %>
</body>
</html>