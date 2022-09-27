<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.List" %>    
    
<% request.setCharacterEncoding("utf-8"); %>    

<%

List<String> list1 = (List<String>)request.getAttribute("boardList");
List<String> list2 = (List<String>)request.getAttribute("commentList");
%>

<h3>게시물</h3>
<p><%=list1.get(0) %></p>
<p><%=list1.get(1) %></p>
<p><%=list1.get(2) %></p>

<h3>댓글</h3>
<p><%=list2.get(0) %></p>
<p><%=list2.get(1) %></p>
