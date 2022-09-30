<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

<%
String val ="자바";
String encodedValue =URLEncoder.encode(val, "utf-8");

response.sendRedirect("to.jsp?name=" + encodedValue);
%>