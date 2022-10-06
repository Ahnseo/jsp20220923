<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@ attribute name="attr1" %>

<%@ tag dynamic-attributes="attrMap" %>

<div>
	${attr1}
</div>
<div>
	${attrMap }
</div>
<hr>
<div>
	<c:forEach items="${attrMap }" var="item">
		<p>${item.key } : ${item.value }</p>
	</c:forEach>
</div>
