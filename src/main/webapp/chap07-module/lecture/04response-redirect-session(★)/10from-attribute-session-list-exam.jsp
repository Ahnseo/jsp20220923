<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
    
<% request.setCharacterEncoding("utf-8"); %>    

세션으로 객체를 공유하자 List이용
<%

List<String> nameLists = List.of("seojung", "Arm");
session.setAttribute("names", nameLists);

response.sendRedirect("10to.jsp");
%>
