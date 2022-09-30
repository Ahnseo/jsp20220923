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
	<form action="11param-to.jsp">
		이름: <input type="text" name="name" value="captain"> <br>
		
		<%-- select[multiple]>option*5 --%>
		<select name="food" id="" multiple="">
			<option value="cake">케이크</option>
			<option value="coffee">커피</option>
			<option value="milk">우유</option>
			<option value="pizza">피자</option>
			<option value="burger">햄버거</option>
		</select>	
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>