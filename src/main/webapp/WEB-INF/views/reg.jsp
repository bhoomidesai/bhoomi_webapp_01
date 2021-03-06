<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
			<article role="login">
				<h3 class="text-center">
					<i class="fa fa-lock"></i>Sign Up
				</h3>

				<form:form method="POST" action="${cp}/reg/in" modelAttribute="user">

					<div class="form-group">
						<form:hidden path="uid" />
					</div>

					<div class="form-group">
						<form:input path="name" class="form-control" placeholder="User Name" />
						<span><form:errors path="name" cssclass="error" style="color:red;" /></span>
					</div>
					<div class="form-group">
						<form:input path="email" type="email" class="form-control"
							placeholder="User email" />
						<span><form:errors path="email" cssclass="error" style="color:red;" /></span>
					</div>
					<div class="form-group">
						<form:input path="password" type="password" class="form-control"
							placeholder="User Password" />
						<span><form:errors path="password" cssclass="error" style="color:red;" /></span>
					</div>
					<div class="form-group">
						<form:hidden path="enabled" value="true" />
						<form:errors path="enabled" style="color:red;" />
					</div>

					<div class="form-group">
						<form:hidden path="role" value="ROLE_USER" />
						<form:errors path="role" style="color:red;" />
					</div>

					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox"> Please accept the
								terms and conditions to proceed with your request.
							</label>
						</div>
					</div>
					<div class="form-group" align="center">
						<input type="submit" class="btn btn-primary btn-md btn-block"
							value="Register">
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






<%@ include file="foot.jsp"%>
