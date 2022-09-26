<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>String Parameter 변경 (형변환)</h1>
<!-- form>input+input:s -->
<form action="">
	<input type="text" name="x">
	<input type="submit" value="형변환?">
</form>
<!-- getParameter() 은 String을 리턴한다. 지금은 숫자로 변경하고싶다. -->
<%
String x = request.getParameter("x");
Integer numX = 0;
if(x != null){
	 numX = Integer.valueOf(x);
}
%>
<%= x %>의 제곱은 <%= numX * numX %> 입니다.
</body>
</html>