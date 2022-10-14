<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>      
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h1>${customer.customerId }번 고객 수정하기</h1>
	
	<div>
		<p>${sessionScope.message }</p>
		<c:remove var="message" scope="session"/>
	</div>
	
		
	<form action="${pageContext.request.contextPath }/Servlet30_update" method="post">
		
		<input type="hidden" name="CustomerId"  value="${customer.customerId }"> <br>
		이름 :  <input type="text" name="CustomerName"  value="${customer.customerName }"> <br>
		별칭 : <input type="text" name="ContactName"  value="${customer.contactName }">  <br>
		주소 : <input type="text" name="Address"  value="${customer.address }"> <br> 
		도시 : <input type="text" name="City"  value="${customer.city }"> <br> 
		국가 : <input type="text" name="Country"  value="${customer.country }">
		<input type="submit" value="고객정보 업데이트"> <br>
	</form>
	<hr>
	
	<%-- 고객번호로 고객정보 삭제 --%>
	<form id="deleteForm1" action="${pageContext.request.contextPath }/Servlet32_delete" method="post">
		고객id : <input type="text" name="CustomerId" value="${customer.customerId }">
		<input id="deleteButton1" class="btn btn-danger" type="submit" value="고객정보 삭제하기">
	</form>
	
	<script>
		document.querySelector("#deleteButton1").addEventListener("click",function(e){
			e.preventDefault();
			console.log("삭제버튼 눌렀지만, 아직 진행되지 않은 상태");
			let c = confirm("삭제하시겠습니까?");
			if(c){
				document.querySelector("#deleteForm1").submit();
			}
		})
	</script>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>