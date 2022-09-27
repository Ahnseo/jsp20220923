<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 코드가 더 간결하다. 자바코드 쓸 필요없어진다. --%>
    <h3>List(el 코드)</h3>
    <p> ${list1[0]} </p>
    <p> ${list1[1]} </p>
    <p> ${list1[2]} </p>
    <p> ${list1[3]} </p>
    
    <h3>Map's value(el 코드)</h3>
    <p> ${map1.get("jisu") } </p>
    <p> ${map1.get("v") } </p>
    
    <%--Map key,value 더 간결하게 --%>
    <p> ${map1.jisu } </p>
    <p> ${map1.v } </p>