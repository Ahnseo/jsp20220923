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
	<h1>context path</h1>
	<!-- <form action="/jsp20220923/chap03/lecture/44context-path.jsp"> -->

	<!--서버를 설정으로/jsp20220923-> /jsp 로 바꿔보자.
	<form action="/jsp/chap03/lecture/44context-path.jsp"> -->
	
	다시 서버를 설정으로/jsp-> /jsp20220923 로 바꿔보자. 오호!
	개발할때 경로에서 실제 운영하는 웹 경로로 바뀌기 때문에 아래와 같이 사용하자.
	<form action="<%= request.getContextPath() %>/chap03/lecture/44context-path.jsp">
		<input type="text" name="address">
		<input type="submit" value="전송">
	</form>
	<%= request.getParameter("address") %> <br>
	현재 경로 request.getContextPath() : <%= request.getContextPath() %>
	
</body>
</html>