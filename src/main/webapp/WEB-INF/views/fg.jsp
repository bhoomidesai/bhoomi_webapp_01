<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<spring:url value="/resources/images" var="img" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>
					
<div class="container">
		<h3>forget password</h3>
		<div class="form-group">
						<label for="inputEmail" class="sr-only">Email address</label> <input
							type="email" id="inputEmail" class="form-control"
							placeholder="Email address" required autofocus>
					</div>
					<button class="btn btn-sm btn-primary" type="submit">Mail me</button>
		
		<div class="row">

<%@ include file="foot.jsp" %>

