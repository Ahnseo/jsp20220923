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
	<h1>메인 컨텐츠</h1>
	
	<div>
		<jsp:include page="04sub.jsp">
			<jsp:param name="num1" value="3" />
			<jsp:param name="num2" value="5" />
		</jsp:include>
	</div>
</body>
</html>