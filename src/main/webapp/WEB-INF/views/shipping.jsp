<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<spring:url value="/resources/images" var="img" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>

<div class="container"> <!-- container start -->
<div class="row"><!-- row Start -->

<div class="col-lg-3">
<!-- empty column for space from right -->
</div>
<div class="col-lg-6"><!-- col Start -->
    <article role="login">
                <h3 class="text-center"><i class="fa fa-lock"></i>Shipping Add</h3>

	<form:form method="POST" action="${cp}/saddress/in" modelAttribute="user">
                
                 <div class="form-group">
                    <form:hidden path="uid"/>
                  </div>
                
                  <div class="form-group">
                    <form:input path="block" class="form-control"
							placeholder="Block no" required="required" />
							<form:errors path="block" style="color:red;" />
                  </div>
                  <div class="form-group">
                    <form:input path="street" type="textarea" class="form-control"
							placeholder="Street" required="required" />
							<form:errors path="street" style="color:red;" />
                  </div>
                  <div class="form-group">
                    <form:input path="landmark" class="form-control"
							placeholder="Landmark" required="required" />
							<form:errors path="landmark" style="color:red;" />
                  </div>
                  <div class="form-group">
                    <form:input path="city" class="form-control"
							placeholder="City" required="required" />
							<form:errors path="city" style="color:red;" />
                  </div>
                  <div class="form-group">
                    <form:input path="state" class="form-control"
							placeholder="State" required="required" />
							<form:errors path="state" style="color:red;" />
                  </div>
                   <div class="form-group" align="center">
                    <input type="submit" class="btn btn-primary btn-md btn-block"  value="Save Shipping Address">
                  </div>
                
                </form:form>
                
                <!-- this is for billing address -->
                
                <form:form method="POST" action="${cp}/billaddress/in" modelAttribute="user">
                
                 <div class="form-group">
                    <form:hidden path="uid"/>
                  </div>
                
                  <div class="form-group">
                    <form:input path="block" class="form-control"
							placeholder="Block no" required="required" />
							<form:errors path="block" style="color:red;" />
                  </div>
                  <div class="form-group">
                    <form:input path="street" type="textarea" class="form-control"
							placeholder="Street" required="required" />
							<form:errors path="street" style="color:red;" />
                  </div>
                  <div class="form-group">
                    <form:input path="landmark" class="form-control"
							placeholder="Landmark" required="required" />
							<form:errors path="landmark" style="color:red;" />
                  </div>
                  <div class="form-group">
                    <form:input path="city" class="form-control"
							placeholder="City" required="required" />
							<form:errors path="city" style="color:red;" />
                  </div>
                  <div class="form-group">
                    <form:input path="state" class="form-control"
							placeholder="State" required="required" />
							<form:errors path="state" style="color:red;" />
                  </div>
                   <div class="form-group" align="center">
                    <input type="submit" class="btn btn-primary btn-md btn-block"  value="Save Billing Address">
                  </div>
                
                </form:form>

              </article>
    </div> <!-- col over -->
    
    <div class="col-lg-3">
<!-- empty column for space from left -->
</div>
    
    </div> <!-- Row over -->
    
    </div><!-- Contain over -->


<%@ include file="foot.jsp" %>

