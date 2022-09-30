<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	//product.jsp 에서 유저가 입력한 "product" 정보를 가져오자. 
	//cart라는 객체 안에 상품명과 그 갯수를 만들고 싶다.  무엇으로 만들까
	//product를 Map의 key 로 사용해보자.
	
	String product = request.getParameter("product");
	
	Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
	if(cart == null){
		cart = new HashMap<String, Integer>();
		session.setAttribute("cart", cart);
	}
	if(product != null && !product.trim().isEmpty()){
		cart.computeIfAbsent(product, (k) -> 1); //(key,value)쌍이 없는 경우 key=product값 ,value=1( 한 개 )로 설정
		cart.computeIfPresent(product, (k, v) -> v + 1); // 같은 key 의 value 값 최신화 하기
	}
	%>
	<h1>장바구니</h1>
	<ul>
	<%
	for(Map.Entry<String, Integer> entry : cart.entrySet()){
		out.print("<li>");
		out.print(entry.getKey());
		out.print(" : ");
		out.print(entry.getValue());
		out.print("</li>");
	}
	%>
	</ul>
	<a href="product.jsp"> 상품 보러 가기</a>
</body>
</html>