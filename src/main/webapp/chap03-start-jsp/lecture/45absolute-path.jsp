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
	<h1>45번 파일 ,   ../book/46path</h1>
	<p>45 -> 46path.jsp 파일로 보내기</p>
	
	<form action="<%= request.getContextPath()%>/chap03/book/46path.jsp ">
	<input type="text" name="address" id="">
	<input type="submit" value="전송">
	</form>
	
	<%= request.getParameter("address") %>
	
	
</body>
</html>