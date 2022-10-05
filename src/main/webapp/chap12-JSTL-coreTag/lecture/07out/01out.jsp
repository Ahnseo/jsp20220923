<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>       
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<%-- 
	자주써야하는데 귀찮아서 잘 안쓰게 된단다.
	근데, 안쓰면 어떠한 문제가 생기는데.. 특수문자...변환 때문!
	
	사실 jsp의 모든 출력을 c:out 태그를 써야한다. 
	 --%>
	 <h3>out : value 속성의 값 또는 content를 특수문자 변환해서 출력</h3>
	 
	 <c:out value="hello"></c:out> 
	 <br>
	 <c:out value="some value">hello</c:out>
	 <br>
	 <%-- ${attr1}==null 이면, content 출력 --%>
	 <c:out value="${attr1 }">hello</c:out>
	 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>