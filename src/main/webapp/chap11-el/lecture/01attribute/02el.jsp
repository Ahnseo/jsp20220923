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
	<%-- java라고 출력되도록, attribute 작성 --%>
	<% 
	request.setAttribute("myAttr2", "java");
	%>

	<h1>${myAttr2 }</h1> 
	<%-- el 코드 사용으로 자바코드 (형변환)사용없이 바로 출력할수있다. --%>
</body>
</html>