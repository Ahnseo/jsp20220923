<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

<%
request.setAttribute("name1", "jimin"); //지민'을 name1에 넣음
					              // 하지만,08to-attribute.jsp 에서 꺼낼수없음. 
//session.setAttribute()
session.setAttribute("name2", "Ahnseo"); // 세션을 사용하면 공유 가능
response.sendRedirect("08to-attribute.jsp"); 

%>