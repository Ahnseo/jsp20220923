<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
Map<String, Object> mapData = new HashMap<>();
mapData.put("name", "안서정");
mapData.put("today", new java.util.Date());
%>
<c:set var="intArray" value="<%=new int[] { 1, 2, 3, 4, 5 }%>" />
<c:set var="map" value="<%=mapData%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>

	<%-- 
	JSP는 보여주는 용도 
	복잡한 계산은 자바파일로 따로 만들자.
	 --%>
	<h4>1부터 100까지 홀수들의 합</h4>
	<c:set var="sum" value="0"/>
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum+i }"/>
	</c:forEach>
	결과 = ${sum } 
	<br><br><br>
	
	<h4>구구단 4단</h4>
	<ul>
	<c:forEach var="i" begin="1" end="9">
		<li>4 x${i } =${4*i }  </li>
	</c:forEach>
	</ul>
	
	<h4>int형 배열</h4>
	<c:forEach var="i" items="${intArray }" begin="2" end="4" varStatus="st">
		<p>${st.index }-${st.count }-[${i }]</p> 
	</c:forEach>
	
	<h4>Map</h4>
	<c:forEach items="${map }" var="item">
		<p>${item.key } = ${item.value }</p>
	</c:forEach>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>