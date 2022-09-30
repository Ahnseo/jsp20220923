<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<!-- 경로: 이 파일(페이지), localhost  -->
<form action="">
	<input name="name" value="seojung" >
	<input type="submit" value="전송">
</form>
name : <%=request.getParameter("name")%>
<%
	/* Redirect하면, request 객체를 공유할수없다. */
	response.sendRedirect("04to.jsp"); 
%>