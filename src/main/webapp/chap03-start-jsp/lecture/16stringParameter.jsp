<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스트링 파라미터를 다른 타입으로 변경</h1>
	<!-- form>(input+br)*3+input:s -->
	<form action="16stringParameter.jsp">
		영어: <input type="text" name="English">
		<br>
		수학: <input type="text" name="Mathematics">
		<br>
		국어: <input type="text" name="Korean">
		<br>
		<input type="submit" value="평균 구하기">
	</form>
	<hr>
	<!-- 	영어,수학, 국어 점수의 평균 구하기 -->
	
	<% 
		String English = request.getParameter("English"); 
		String Mathematics = request.getParameter("Mathematics"); 
		String Korean = request.getParameter("Korean"); 
		
		Integer englishScore = 0;
		Integer mathematicsScore = 0;
		Integer koreanScore = 0;
		
		if(English != null){
			englishScore = Integer.parseInt(English);			
		}
		if(Mathematics != null){
			mathematicsScore = Integer.parseInt(Mathematics);			
		}
		if(Korean != null){
			koreanScore = Integer.parseInt(Korean);			
		}
		 
		Double avg = (double)(englishScore + mathematicsScore + koreanScore) / 3;
	%>
	평균은 <%= avg %> 입니다.
</body>
</html>