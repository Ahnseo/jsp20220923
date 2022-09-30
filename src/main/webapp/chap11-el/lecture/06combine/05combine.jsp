
<%@page import="jsp20220923.chap07.Person"%>
<%@page import="java.util.*"%>

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
	Map<String, List<Person>> map = new HashMap<>();
	List<Person> list1 = new ArrayList<>();
	List<Person> list2 = new ArrayList<>();
	
	Person person1 = new Person();
	Person person2 = new Person();
	Person person3 = new Person();
	Person person4 = new Person();
	
	person1.setName("피노키오");
	person1.setAge(30);
	
	person2.setName("둘리");
	person2.setAge(32);
	
	person3.setName("까치");
	person3.setAge(28);
	
	person4.setName("엄지");
	person4.setAge(20);
	
	list1.add(person1);
	list1.add(person2);
	
	list2.add(person3);
	list2.add(person4);
	
	map.put("person1", list1);
	map.put("person2", list2);	
	
	request.setAttribute("people", map);	
	%>
	
	
	<%-- attr    map  list javabean    attr    map  list javabean --%>
	<p>${people.person1[0]. name } : ${people.person1[0].  age }</p>
	<p>${people.person1[1]. name } : ${people.person1[1].  age }</p>
	<p>${people.person2[0]. name } : ${people.person2[0].  age }</p>
	<p>${people.person2[1].name } : ${people.person2[1].age }</p>
	
	
	
	
</body>
</html>