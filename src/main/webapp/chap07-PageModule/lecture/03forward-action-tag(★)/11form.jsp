<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="jsp20220923.chap07.*" %>  
<%@ page import="java.util.*" %> 
    
    
<% request.setCharacterEncoding("utf-8"); %>    

<%
    /* 배열 공간을 만들고 */
	List<Person> list = new ArrayList<>();
	
	/* 빈 객체를 만들고 */
	Person p1 = new Person();
	Person p2 = new Person();
	Person p3 = new Person();
	
	/* setName()로 이름을넣고 */
	p1.setName("홍길동");
	p2.setName("박자바");
	p3.setName("안서정");
	
	/* list에 담고 */
	list.add(p1);
	list.add(p2);
	list.add(p3);

	request.setAttribute("list", list);
	
%>

<jsp:forward page="11to.jsp"></jsp:forward>