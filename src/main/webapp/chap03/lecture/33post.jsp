<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전송방식(method) : post</h1>
	<p>길이 제한이 없음 , 주소란이 노출되지 않음</p>
	
	<!-- 주소에 노출되지않기 때문에, http 몸통에 저장됨 
	페이지소스보기->네트워크->headers->payload 로 확인가능 -->
	<form action="" method="post">
		이름 : <input type="text" name="name" id=""> <br>
		암호 : <input type="text" name="pw" id=""> <br>
		<input type="submit" value="가입">
	</form>
</body>
</html>