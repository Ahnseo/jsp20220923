<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<%-- Employee 클래스의 자바빈 사용 ,
	getFirstName()-> 자바빈firstName, 
	getLastName()-> 자바빈lastName  --%>

	<h1>직원명 리스트</h1>
	
	<form action="" method="get">
		Name: <input type="text" name="q" > 
		<input type="submit" value="직원 조회하기">
	</form>
	
	<c:if test="${ empty employeeList }">
		<h3>이름을 조회하세요.</h3>
	</c:if>

	<c:if test="${ !empty employeeList }">
		<table class="table">
			<thead>
				<tr>
					
					<th>lastName</th>
					<th>firstName</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${employeeList }" var="employee">
					<tr>
						<td>${employee.lastName }</td>
						<td>${employee.firstName }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>