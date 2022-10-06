<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@ attribute name="left"  required="true"%>
<%@ attribute name="right"  required="true"%>
<%@ attribute name="active" required="false" %>


<nav aria-label="Page navigation example">
  <ul class="pagination">
  		<li class="page-item"><a class="page-link" href="#">Previous</a></li>
  		
    	<c:forEach  var="pageNumber" begin="${left }" end="${right}">
    		
				<li class="page-item ${pageNumber eq active ? 'active' : '' }"><a class="page-link" href="#">${pageNumber }</a></li>
				
   		</c:forEach>
    	
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>



