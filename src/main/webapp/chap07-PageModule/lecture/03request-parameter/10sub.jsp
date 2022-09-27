<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*" %>   


<%

	Book book1 = (Book)request.getAttribute("book1");
	Book book2 = (Book)request.getAttribute("book2");
%>
<p>
<%=book1.getTitle() %>
<%=book1.getPrice() %>
</p>
<p>
<%=book2.getTitle() %>
<%=book2.getPrice() %>
</p>