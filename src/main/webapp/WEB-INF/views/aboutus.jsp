<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<spring:url value="/resources/images" var="img" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>
					
<div class="container">
		<h3>About us</h3>
		<hr />
		E-commerce (electronic commerce or EC) is the buying and selling of goods and services,
		 or the transmitting of funds or data, over an electronic network, primarily the internet. 
		 These business transactions occur either as business-to-business, business-to-consumer, 
		 consumer-to-consumer or consumer-to-business.
		 
		 This is the iStore portal for only premium customers of Apple Inc.
		<div class="row">

<div class="footer navbar-fixed-bottom">
  <ul class="pager">
    <li><a href="${cp }/">Home</a></li>
		<li>@ all rights reserved 2016</li>
    <li><a href="${cp }/contact">contact us</a></li>
  </ul>
</div>

</body>
</html>
