<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>input요소의 type 속성(attribute)</h1>
	<p>검색해서 찾아쓰자</p>
		<form action="24input-types.jsp">
		text : <input type="text" name="t"> <br>
		number : <input type="number" name="n"> <br>
		email : <input type="email" name="e"> <br>
		password : <input type="password" name="p"> <br>
		file : <input type="file" name="f"> <br>
		button : <input type="button" value="button"> <br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>