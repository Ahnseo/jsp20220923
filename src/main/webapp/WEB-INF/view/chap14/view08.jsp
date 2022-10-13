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

<style type="text/css">
.margin20 {
	margin: 20px;
}
</style>
</head>

<body>
	<h1 class="margin20">특정 id 고객 정보 조회</h1>
	<div>
		<form action="" method="get">
			<input type="text" name="id" value="" class="margin20"> <input
				type="submit" value="고객정보조회">
		</form>

	</div>
	<div>
		<table class="table">
			<thead>
				<tr>
					<th>Id</th>
					<th>이름</th>
					<th>주소</th>
					<th>나라</th>
					<th>도시</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${customerList }" var="customer">
					<tr>
						<td>${customer.customerId }</td>
						<td>${customer.customerName }</td>
						<td>${customer.address }</td>
						<td>${customer.country }</td>
						<td>${customer.city }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>