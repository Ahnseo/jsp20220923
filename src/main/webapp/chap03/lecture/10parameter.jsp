<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Parameter</h1>
	<p>queryString 주소작성 q = bts 넣자</p>  
	<p>q 파라미터 : <%= request.getParameter("q")%></p>
	<%
	String q = request.getParameter("q");
	
	if(q == null){
		out.print("파라미터를 입력하세요.");
	}else{
		out.print(q+ "의 검색 결과 입니다.");
	}
	sysout
	%>
</body>
</html>