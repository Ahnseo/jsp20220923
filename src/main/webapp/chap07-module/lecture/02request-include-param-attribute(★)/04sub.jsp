<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
String x = request.getParameter("num1"); 
String y = request.getParameter("num2"); 

String r1 = x+y;

Integer r2 = Integer.parseInt(x) + Integer.valueOf(y);
%> 

<p>String 연산 = <%=r1%></p>

<p>ation tag 형변환 String -> Integer</p>
<p>Integer 연산 = <%=r2%></p>