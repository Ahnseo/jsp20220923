<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    
<% request.setCharacterEncoding("utf-8"); %>    

<%
Map<String,String> mapSongs = Map.of("OneOkRock","Let Me_Let You_Go","Issues","Hooligans");

session.setAttribute("songs", mapSongs);
response.sendRedirect("11to.jsp");
%>