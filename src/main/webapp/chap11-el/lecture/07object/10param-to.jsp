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
	<p>이메일 : ${param.email }</p>
	<p>전화번호 : ${param.phoneNumber }</p>
	<p>상품 : ${param.product }</p>
	
	<a href="10param-from.jsp"> 10param-from.jsp 돌아가기 </a>
</body>
</html>