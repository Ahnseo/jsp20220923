<%@page import="java.util.*"%>
<%@ page import="jsp20220923.chap07.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
	<%--
	Car class import -> Car 타입의 아이템을 갖는 List를 attribute에 넣고  
	c:forEach 로 탐색
	--%>

	<%
	Car car1 = new Car();
	car1.setModel("그랜져");
	car1.setPrice(4000);

	Car car2 = new Car();
	car2.setModel("쏘나타");
	car2.setPrice(2000);
	
	Car car3 = new Car();
	car3.setModel("k7");
	car3.setPrice(3000);

	List<Car> car = new ArrayList<>();
	car.add(car1);
	car.add(car2);
	car.add(car3);
	
	pageContext.setAttribute("carList", car);
	%>
	<table class="table">
		<thead>
			<tr>
				<td>#</td>
				<td>모델</td>
				<td>가격</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${carList }" var="car" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>${car.model }</td>
					<td>${car.price }</td>
				</tr>
			</c:forEach>

		</tbody>

	</table>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>