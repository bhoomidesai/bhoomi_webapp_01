<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<spring:url value="/resources/images" var="img" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>

<div class="container">
	<!-- container start -->
	<div class="row">
		<!-- row Start -->

		<div class="col-lg-3">
			<!-- empty column for space from right -->
		</div>
		<div class="col-lg-6">
			<!-- col Start -->
			<article role="login">
				<h3 class="text-center">
					<i class="fa fa-lock"></i>Billing Address
				</h3>

				<form:form method="POST" action="${cp }/cart/pay" modelAttribute="user">

					<div class="form-group">
						<form:input path="streetName" class="form-control" placeholder="Address line 1" required="required" />
						<span><form:errors path="streetName" cssclass="error" style="color:red;" /></span>
					</div>
					<div class="form-group">
						<form:input path="apartmentNumber" class="form-control" placeholder="Address line 2" required="required"/>
						<span><form:errors path="apartmentNumber" cssclass="error" style="color:red;" /></span>
					</div>

					<div class="form-group" align="center">
						<input type="submit" class="btn btn-primary btn-md btn-block"
							value="Continue">
					</div>

				</form:form>

			</article>
		</div>
		<!-- col over -->

		<div class="col-lg-3">
			<!-- empty column for space from left -->
		</div>

	</div>
	<!-- Row over -->

</div>
<!-- Contain over -->

<%@ include file="foot.jsp" %>

