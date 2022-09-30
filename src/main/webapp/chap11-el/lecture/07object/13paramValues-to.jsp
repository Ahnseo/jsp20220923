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
	<p>고객명: ${param.userName }</p>
	<p>주문일자: ${param.date }</p>
	<p>상품 : ${paramValues.product[0] }</p>
	<p>상품 : ${paramValues.product[1] }</p>
	<p>상품 : ${paramValues.product[2] }</p>
	<p>상품 : ${paramValues.product[3] }</p>
	<p>상품 : ${paramValues.product[4] }</p>
	
	<a href="13paramValues-from.jsp"> 돌아가기</a>
</body>
</html>