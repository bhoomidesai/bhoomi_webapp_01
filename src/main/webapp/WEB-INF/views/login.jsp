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
				<i class="fa fa-lock"></i>Login
			</h3>
			<form action="${cp }/login" method="post">
				<div class="form-group">
					<label for="inputEmail" class="sr-only">Email address</label> <input
						type="email" id="inputEmail" class="form-control" name="email"
						placeholder="Email address" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" id="inputPassword" class="form-control" name="password"
						placeholder="Password" required>
				</div>
				<div class="form-group">
					<div class="checkbox">
						<label> <input type="checkbox" value="remember-me">
							Remember me
						</label><br /> <a href="${cp }/forget">Forget Password</a>
					</div>
				</div>

				<button class="btn btn-sm btn-primary" type="submit">Login</button>
			</form>
		</div>
	</div>
</div>

<%@ include file="foot.jsp"%>