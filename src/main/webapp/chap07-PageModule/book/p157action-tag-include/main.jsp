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
	
	main.jsp 에서 생성한 내용 
	<br>
	
	<jsp:include page="sub.jsp"></jsp:include> 
	<br>
	
	include 이후 내용
</body>
</html>