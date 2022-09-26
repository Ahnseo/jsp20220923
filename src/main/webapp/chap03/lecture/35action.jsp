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
	<h1>form 요소의 action 속성 : 데이터 전송</h1>
	<!-- /로 작성하지 않으면, 상대경로로 이동 -->
	<!-- lecture 폴더 안에, 36action.jsp 파일 만들어 보자 -->
	<!-- 36번 경로 http://localhost:8080/jsp20220923/chap03/lecture/36action.jsp -->
	<!-- <form action="36action.jsp"> -->
	
	<!-- /로 작성하지 않으면, 상대경로로 이동 -->
	<!-- lecture 폴더 안에 sub1 폴더 만들고, 37action.jsp 파일 만들어 보자 -->
	<!-- 37번 경로 http://localhost:8080/jsp20220923/chap03/lecture/sub1/37action.jsp -->
	<!-- <form action="sub1/37action.jsp"> -->
	
	<!-- .. : 상위 경로 -->
	<!-- chap03 폴더 안에 38action.jsp 파일 만들어 보자 -->
	<!-- 38번 경로 http://localhost:8080/jsp20220923/chap03/38action.jsp -->
	<!-- <form action="../38action.jsp"> -->
	 
	<!-- .. : 상위 경로 -->
	<!-- chap03 폴더 안에 38action.jsp 파일 만들어 보자 -->
	<!-- 39번 경로 http://localhost:8080/jsp20220923/39action.jsp -->
	<!-- <form action="../../39action.jsp"> -->
	
	<!-- .. : 상위 경로 -->
	<!-- book 폴더 안에 40action.jsp 파일 만들어 보자 -->
	<!-- 40번 경로 http://localhost:8080/jsp20220923/chap03/book/40action.jsp -->
	<!-- <form action="../book/40action.jsp"> --> 
	
	<form action="../../39action.jsp">
	<input type="text" name="name"> <br>
	<input type="text" name="address"> <br>
	
	<input type="submit" value="전송">
	</form>
</body>
</html>