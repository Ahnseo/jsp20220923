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
	<a href="${pageContext.request.contextPath }/Servlet28_insert_input_post">돌아가기/Servlet28</a>
	<br>
	<a href="${pageContext.request.contextPath }/Servlet30_update">고객정보 업데이트/Servlet30_update</a>
	<br>
	<a href="${pageContext.request.contextPath }/Servlet32_delete">고객정보 삭제하기/Servlet32_delete</a>

	<c:if test="${ not empty sessionScope.message }">
		<div class="alert alert-danger" role="alert">
			${sessionScope.message }
			
		</div>
	</c:if>
	<c:remove var="message" scope="session" />
	<%-- <form action="${ pageContext.request.contextPath}/Servlet23" method="get">
		클라이언트가 사용하는 경로 이므로 이렇게 설정했지만, 경로설정은 사용할수도있고, 사용하지않을수도 있다.
		지금은 같은 파일을 사용하므로, 빈칸으로 두어도 작동한다.  
		--%>
	<form action="${pageContext.request.contextPath }/Servlet23" method="get"> 
		검색 : <input type="text" name="keyword" value="${param.keyword }" placeholder="이름 검색" >
		<input type="submit" value="직원이름 검색하기">
	</form>

	<hr>
	
	<%-- 기본 전체 조회 또는 검색한 결과를 전체조회  --%>
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
					<td>				
						<c:url var = "updateUrl" value="/Servlet30_update">
							<c:param name="CustomerId" value="${customer.customerId }"></c:param>
						</c:url>
				
						<a href="${updateUrl }">
							${customer.customerName }
						</a>
					</td>	
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