<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"  %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	List<String> list1 = List.of("A","B","C","D","E","F");
	
	request.setAttribute("langs", list1);
	%>
	
	<%
	List<List<String>> lists = (List<List<String>>) request.getAttribute("langs");
	
	for(int i = 0; i < lists.size(); i++ ){
		pageContext.setAttribute("i", i); // 현재 페이지의 한정된 자원으로 .. i 값을 정해줌 
	%>	
		<p>${langs[i] }</p>	
	<%
	}
	%>
	
	
</body>
</html>