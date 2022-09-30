<%@page import="java.util.*"%>
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
	<%-- 
	두개의 entry를 가진 
	Map<String, Person> 타입 객체를 attribute에 넣고
	entry의 value들의 프로퍼티 를 el 로 출력해보자
	 --%>
	
	<% 
	Person person1 = new Person();
	person1.setName("서정");
	person1.setAge(30);
	person1.setAlive(true);

	Person person2 = new Person();
	person2.setName("아름");
	person2.setAge(32);
	person2.setAlive(true);
	
	Map<String, Person> map = new HashMap<>();
	map.put("p1", person1);
	map.put("p2", person2);
	
	request.setAttribute("myPerson", map);
	%>	 
	<h1>이름 : ${myPerson.p1.name }</h1>
	<h1>나이 : ${myPerson.p1.age }</h1>
	<h1>isAlive? : ${myPerson.p1.alive }</h1>
	<hr>
	<h1>이름 : ${myPerson.p2.name }</h1>
	<h1>나이 : ${myPerson.p2.age }</h1>
	<h1>isAlive? : ${myPerson.p2.alive }</h1>
	
	
	
</body>
</html>