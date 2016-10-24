<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<spring:url value="/resources/images" var="img" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%@ include file="head.jsp"%>

<div class="container">
	<!-- container start -->
	<div class="row">
		<!-- row Start -->

		<div class="col-lg-3">
			<!-- empty column for space from right -->
		</div>
		<div class="col-lg-6">
			<!-- col Start -->
				<h3 class="text-center">
					<i class="fa fa-lock"></i>Add category
				</h3>

<form:form method="POST" action="${cp}/addcat" modelAttribute="user">

					<div class="form-group">
						<form:hidden path="cid" />
					</div>

					<div class="form-group">
						<form:input path="cname" class="form-control" placeholder="Category Name" required="required" />
					</div>
		</div>
		<div class="form-group" align="center">
			<input type="submit" class="btn btn-primary btn-md btn-block"
				value="Add to Categories">
		</div>

</form:form>

	</div>
	<!-- col over -->

	<div class="col-lg-3">
		<!-- empty column for space from left -->
	</div>

</div>
<!-- Row over -->

</div>
<!-- Contain over -->



<%@ include file="foot.jsp"%>

