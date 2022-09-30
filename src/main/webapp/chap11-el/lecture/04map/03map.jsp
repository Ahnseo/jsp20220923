<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"  %>    
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	Map<String, String> map = new HashMap<>();
	map.put("key1", "marvel");
	map.put("my name", "hurk");
	map.put("1key", "thor");
	map.put("!@#$%", "panther");
	request.setAttribute("myMap", map);
	
	request.setAttribute("myMap", map);
	pageContext.setAttribute("k", "key1");
	%>
	
	<p>${myMap.key1 }</p>
	
	<%-- [""] 사용하기  --%>
	<p>${myMap["key1"] }</p> <%-- ["그냥key이름"] 사용 --%>
	<p>${myMap["my name"] }</p><%-- ["띄어쓰기된 이름"] 사용 --%>
	<p>${myMap["1key"] }</p><%-- ["숫자로시작된 이름"] 사용 --%>
	<p>${myMap["!@#$%"] }</p><%-- ["특수기호 이름"] 사용 --%>
	
	<hr>
	<p>${myMap[key1] }</p> <%-- ""없음 => key1 이라는 attribute를 찾아서 사용됨. (없으면 출력안함) --%>
	<p>${myMap[k] }</p>
	
</body>
</html>