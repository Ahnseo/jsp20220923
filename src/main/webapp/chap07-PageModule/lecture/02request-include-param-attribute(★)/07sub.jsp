<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Map" %>

<%
	Object o = request.getAttribute("myMap");
	Map<String, String> map = (Map<String, String>) o;
	
	if (map != null) {
%>
		
		<p>key = name, value = <%= map.get("name")  %></p> <%-- null이 아닌 값이 출력 --%>
		<p>key = address, value = <%= map.get("address") %></p> <%-- null이 아닌 값이 출력 --%>
<%
	}
%>