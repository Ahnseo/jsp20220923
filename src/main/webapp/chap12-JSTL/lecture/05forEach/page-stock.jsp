<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>재고 이름 수량 저장하세요</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style type="text/css">
	.input{
		display: flex;
		padding-top: 20px;
		padding-left: 20px;
	}
</style>
</head>
<body>
<%-- stock 파일: 사용자로부터 저장되는 입력란 --%>
<%-- 현재 페이지 저장 + forward  --%>
<div class="input">
<form action="" method="post">
	<input type="text" name="productName" placeholder="상품 이름 입력">
	<input type="number" name="productNum" placeholder="상품 수량 입력">
	<input type="submit" value="저장">
</form>
</div>
<% 
	List <String> productNameList = new ArrayList<>();
	Map <List<String>,Integer> productNameMap = new HashMap<>();
	/*  stockNameList.add(productName);  */
	
	String productName = (String)request.getAttribute("productName");
	if( productName != null && !productName.isBlank() ){
		
		request.setAttribute("productNameSetAttr", productName);
		productNameList.add(productNameSetAttr);
	}
	for(int i = 0; i< productName.size(); i++){
%>
	<%= productName.get(i) %>
<%		
	}
%>

<%-- <jsp:forward page="calculation.jsp"/> --%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>