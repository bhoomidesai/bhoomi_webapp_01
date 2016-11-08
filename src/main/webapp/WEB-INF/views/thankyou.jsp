<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<spring:url value="/resources/images" var="img" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>
	<%-- <div class="container" align="center">
	<div class="panel-body text-center">
	<article role="login">
				<h3 class="text-center">
					<i class="fa fa-lock"></i>Billing Address
				</h3>

				<form:form method="GET" modelAttribute="billId">

					<div class="form-group">
						<form:label path="streetName" class="form-control" placeholder="Address line 1" />
						<span><form:errors path="streetName" cssclass="error" style="color:red;" /></span>
					</div>
					<div class="form-group">
						<form:label path="apartmentNumber" class="form-control" placeholder="Address line 2" />
						<span><form:errors path="apartmentNumber" cssclass="error" style="color:red;" /></span>
					</div>
					<div class="form-group">
						<form:label path="uid" class="form-control" placeholder="Address line 2" />
						<span><form:errors path="uid" cssclass="error" style="color:red;" /></span>
					</div>

				</form:form>

			</article>
 --%>	
                    <img src="${cp }/resources/images/s.jpg" style="height:100px; width:10%"></div>
		
		<div class="row">
		<h3>Thanks for shopping have a nice day</h3>
		<hr />
						
</div>
</div>
<%@ include file="foot.jsp" %>

