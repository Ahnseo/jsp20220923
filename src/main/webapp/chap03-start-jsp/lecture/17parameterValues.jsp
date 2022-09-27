<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>getParameterValues(): 여러 파라미터를 얻는다.</h1>
<form action="17parameterValues.jsp">
	<input type="text" name ="q">
	<br>
	<input type="text" name ="q">
	<br>
	<input type="text" name ="q">
	<br>
	<input type="submit" value="전송">
	<hr>
	<%
	String val1 = request.getParameter("q");
	%>
	val1 : <%= val1 %> <br>
	
	<%
	String[] vals = vals = request.getParameterValues("q");
	if(vals != null){
	%>		
	vals 길이 : <%= vals.length %> <br>
	vals[0] : <%= vals[0] %> <br>
	vals[1] : <%= vals[1] %> <br>
	vals[2] : <%= vals[2] %> <br>
	<%}%>
</form>
</body>
</html>