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
	<h1>※ scope 객체 사용시 주의할 점(: attribute사용시 주의)</h1>
	<h2>pageContext와 request는 thread-safe : 마음껏 사용가능</h2>
	<p>코드를 작성할 때, request와 session을 가장 많이 사용한다고 함...</p>
	
	<h2>session과 application은 thread-safe 하지않음 : 주의해야함 </h2>
	
	<h3>pageContext -> request -> session 순서로 attribute를 사용할 때, 작은 영역부터 접근하여 thread 사용하길 바란다...</h3>
	<h3>session에는 attribute를 가능한 쓰지 않는데 필요하면 쓸 수도 있음.</h3>
	<h3>application에는 attribute를 가능한 쓰지 않고, 읽기 전용으로만.</h3>
	
</body>
</html>