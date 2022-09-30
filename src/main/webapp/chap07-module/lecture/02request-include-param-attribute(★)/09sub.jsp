<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %> 
    
    <%
    	List<String> l = (List<String>)request.getAttribute("list1");
 		Map<String,String> m = (Map<String,String>)request.getAttribute("map1"); 	
    %>
    
    <h3>List</h3>
    <p> list(0): <%=l.get(0) %> </p>
    <p> list(1): <%=l.get(1) %> </p>
    <p> list(2): <%=l.get(2) %> </p>
    <p> list(3): <%=l.get(3) %> </p>
    
    <h3>Map's value</h3>
    <p> key jisu => value: <%=m.get("jisu") %> </p>
    <p> key v => value: <%=m.get("v") %> </p>
   