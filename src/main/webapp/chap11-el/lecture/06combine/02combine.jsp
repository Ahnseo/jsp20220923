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
	Car car1 = new Car();
	car1.setModel("k5");
	car1.setPrice(2000);
	
	Car car2 = new Car();
	car2.setModel("k8");
	car2.setPrice(5000);
	
	List<Car> carLists = new ArrayList<>();
	carLists.add(car1);
	carLists.add(car2);
	
	request.setAttribute("cars", carLists);
	%>


	<p>${cars[0].company }</p>
	<p>${cars[0].model }</p>
	<p>${cars[0].price }</p>
	
	<p>${cars[1].company }</p>
	<p>${cars[1].model }</p>
	<p>${cars[1].price }</p>
</body>
</html>