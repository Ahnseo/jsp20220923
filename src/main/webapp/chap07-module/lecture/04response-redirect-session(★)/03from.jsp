<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
/* 03to.jsp로 다시 요청 보내라
* [Client] -> [Server (http://../03from.jsp) -> response.sendRedirect("03to.jsp")] 
*	-> [Client]
*/
response.sendRedirect("03to.jsp");
%>