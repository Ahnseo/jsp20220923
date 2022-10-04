<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>     
    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<h1>상품</h1>
	<%-- 경로는 "cart.jsp" --%> 
	<form action="cart.jsp" methed="post"> 
		<input type="text" name="product">
		<input type="submit" value="전송"> 
	</form>
	
	<a href="cart.jsp"> 장바구니로 이동</a>
</div>
</body>
</html>