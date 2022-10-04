<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

	<% 
	request.setAttribute("num1", 99);
	request.setAttribute("num2", 77);
	request.setAttribute("num3", 66);
	request.setAttribute("num4", 88);
	
	request.setAttribute("n5", 11);
	request.setAttribute("n6", 22);
	request.setAttribute("n7", 33);
	request.setAttribute("n8", 44);
	request.setAttribute("num9", 55);
	request.setAttribute("num10", 66);
	%>
	<jsp:forward page="02to.jsp"></jsp:forward>
