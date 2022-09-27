<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>select option 연습</h1>
	<!-- action=""안쓰면 자기자신에게 전송됨 -->
	<form action=""> 
		통신사 : 
		<select name="tel" >
			<option value="sk">SKT</option>
			<option value="kt">KT</option>
			<option value="lg">LG</option>
		</select>
		<hr>
		음식 : 
		<select name="foods" multiple>
			<option value="kimbab">김밥</option>
			<option value="hotnoodle">라면</option>
			<option value="burger">햄버거</option>
		</select>
		<input type="submit" value="전송">
	</form>

	<hr>
	
	<%
	String tel = request.getParameter("tel");
	String[] foods = request.getParameterValues("foods");
	if( tel == null){
		tel ="";
	}
	if(foods == null){
		foods = new String[]{};
	}
	%>
	통신사는 <%=tel%> 이고, <br>
	선택한 음식들은 <%= String.join(", ", foods) %> 입니다.
</body>
</html>