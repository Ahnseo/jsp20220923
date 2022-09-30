
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="jsp20220923.chap07.*"%>
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
	
	Car car1 = new Car();
	car1.setModel("k5");
	car1.setPrice(2000);
	
	Car car2 = new Car();
	car2.setModel("k8");
	car2.setPrice(5000);
	
	Map<String, Car> map = new HashMap<>();
	map.put("car1", car1);
	map.put("car2", car2);
	request.setAttribute("cars", map);
	%>
	<p>${cars.car1.model }</p>
	<p>${cars.car1.price }</p>
	<p>${cars.car1.company }</p>
	<hr>
	<p>${cars["car1"].model }</p>
	<p>${cars["car1"].price }</p>
	<p>${cars["car1"].company }</p>
	<hr>
	<p>${cars["car1"]["model"] }</p>  <%-- ["프로퍼티 넣어도 적용됨"] --%>
	<p>${cars["car1"]["price"] }</p> <%-- [""]은 띄어쓰기된, 숫자로시작된, 특수기호있는 이름들을 넣어 출력할때 쓰니까.--%>
	<p>${cars["car1"]["company"] }</p>
	<hr>
</body>
</html>