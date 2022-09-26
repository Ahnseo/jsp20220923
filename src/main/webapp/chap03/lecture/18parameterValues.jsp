<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>parameterValues()으로 3개의 숫자의 평균을 구하자</h1>
	
	<!-- form>(input[name="scores"]+br)*3+input:s -->
	<form action="18parameterValues.jsp">
		<input type="text" name="scores" value="100">
		<br>
		<input type="text" name="scores" value="90">
		<br>
		<input type="text" name="scores" value="80">
		<br>
		<input type="submit" value="전송">
	</form>
	<%
	String[] scores = request.getParameterValues("scores");
	
	Integer sum = 0;
	
	
	if(scores != null){	
		for( String score : scores){
			sum += Integer.valueOf(score);
			out.print("<p>");
			out.print("점수"+ score);
			out.print("</p>");
		}
	}
	
	double avg = (double) sum / 3;
	%>
	
	<%= avg %>
	
	
</body>
</html>