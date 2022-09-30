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
	<p>${pageContext.request.contextPath }</p>
	<form action="13paramValues-to.jsp" method="post">
		<%-- (input:checkbox)*5 --%>
		<input type="text" name="userName" placeholder="이름을 입력하세요."> 
		<br>
		<input type="date" name="date" placeholder="주문일자를 입력하세요."> 
		<br>
		아이스크림<input type="checkbox" name="product" value="IceCream">
		자동차<input type="checkbox" name="product" value="Car">
		노트북<input type="checkbox" name="product" value="NoteBook" >
		음식<input type="checkbox" name="product" value="Food">
		핸드폰<input type="checkbox" name="product" value="Phone">
		<br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>