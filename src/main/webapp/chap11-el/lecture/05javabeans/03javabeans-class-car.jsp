<%@page import="jsp20220923.chap07.Car"%>
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
	Car car = new Car();
	car.setModel("k8");
	car.setPrice(4000);
	
	request.setAttribute("myCar", car);
	%>
	<p>${myCar.model }</p>
	<p>${myCar.price }</p>
	<p>${myCar.company }</p><%-- Car 클래스에 getCompany() 가 있으니, company 프로퍼티 있음. --%>
	<hr>
	<p>${myCar["model"] }</p>
	<p>${myCar["price"] }</p>
	<p>${myCar["company"] }</p>
	
</body>
</html>