<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="menuItems" required="true"%>
<%@ attribute name="current" required="false"%>

<%-- Map 으로 메인페이지에서 지정한 임의의 attr 저장 --%>
<%@ tag dynamic-attributes="links" %>

<%-- el로 그값을 출력하기 --%>
${links.Home }<br>
${links.About }<br>
<br>
${links[Home] }<br>
${links[About] }<br>

<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      
		<c:forEach items="${fn:split(menuItems, ',') }" var="item">
	        <li class="nav-item ${item eq current? 'active' : '' } ">
	        						<%-- links[item] 오호~ --%>		
	         	<a class="nav-link" href="${links[item] }">${item }</a>
	        </li>
		</c:forEach>
		
      </ul>
    </div>
  </div>
</nav>