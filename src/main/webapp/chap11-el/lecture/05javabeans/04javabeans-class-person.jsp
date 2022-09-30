<%@page import="jsp20220923.chap07.Person"%>
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
	Person person = new Person();
	person.setName("안서정");
	person.setAge(30);
	person.setAlive(true);
	
	request.setAttribute("person1", person);
	
	%>
	<h1>person1 attribute</h1>
	<p>이름 : ${person1.name }</p> <%-- Person클래스 setName() => name 프로퍼티 생성 --%>
	<p>나이 : ${person1.age }</p> <%-- Person클래스 setAge() => age 프로퍼티 생성 --%>
	<p>살아있니? : ${person1.alive }</p> <%-- Person클래스 isAlive() => alive 프로퍼티 생성 --%>
</body>
</html>