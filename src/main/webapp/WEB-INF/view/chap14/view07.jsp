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
	<h1>고객 정보 조회</h1>
	<a href="${pageContext.request.contextPath }/Servlet28_insert_input_post">돌아가기</a>
	
	<form action="" method="get">
		검색 : <input type="text" name="keyword" value="${param.keyword }" placeholder="이름 검색" >
		<input type="submit" value="검색하기">
	</form>

	<hr>
	
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
	<a href="${pageContext.request.contextPath }/Servlet28_insert_input_post">돌아가기</a>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>