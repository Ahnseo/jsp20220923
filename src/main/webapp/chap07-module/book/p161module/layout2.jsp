<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout2</title>
</head>
<body>

<table width="400" border="1" cellpadding="o" cellspacing="0">
	<tr>
		<td colspan="2">
			<jsp:include page="module/top.jsp" flush="false"></jsp:include>
		</td>
	</tr>
	<tr>
		<td width="100" valign="top">
			<jsp:include page="module/left.jsp" flush="false"></jsp:include>
		</td>
		<td width="300" valign="top">
			이부분은 layout2.jsp를 생성한다. <br>
			레이아웃2
			<br><br><br>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="module/bottom.jsp" flush="false"></jsp:include>
		</td>
	</tr>
</body>
</html>