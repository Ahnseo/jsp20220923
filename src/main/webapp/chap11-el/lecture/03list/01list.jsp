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
	<%--list 로 attribute 코드작성 --%>
	<% 
	java.util.List<String> songList = java.util.List.of("Love call","you & me","baby baby");
	request.setAttribute("song", songList);
	%>
	<hr>
	<p>${song[0] }</p>
	<p>${song[1] }</p>
	<p>${song[2] }</p>
</body>
</html>