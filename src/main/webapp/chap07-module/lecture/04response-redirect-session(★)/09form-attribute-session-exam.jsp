<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    


<%
//request를 공유하는 session
	session.setAttribute("num1", 3);
	session.setAttribute("num2", 6);
	response.sendRedirect("09to.jsp");
%>