<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로딩시 선택된 상태로 출력</h1>
	<!-- 라디오버튼(라디오버튼은 꼭 1개 만 checked)과 
		체크박스 요소에 checked 속성이 있으면,
		로딩시 선택된 상태 -->
	<form action="23checked.jsp">
		<input type="checkbox" name="food" value="pizza" checked>피자
		<input type="checkbox" name="food" value="bibimbab">비빔밥
		<input type="checkbox" name="food" value="kimchi" checked>김치
		<input type="checkbox" name="food" value="burger">버거
	
		<hr>
		
		<input type="radio" name="loc" value="home" checked>집
		<input type="radio" name="loc" value="work">회사
		<input type="radio" name="loc" value="other">다른장소
	
	</form>
</body>
</html>