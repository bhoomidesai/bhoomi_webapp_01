<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:url value="/resources/images" var="img"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>
<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8 ">
			<div class="table-responsive">
				<table class="table table-hover table-condensed cf table2">
					<thead class="cf">
						<tr>
							<th></th>
							<th>ProductID</th>
							<th>Product Name</th>
							<th>Product Version</th>
							<th>Product Price</th>
							<th>Edit Product</th>
							<th>Delete Product</th>
						</tr>
					</thead>
					<tbody>
					<!-- loop to print data from object (productData) which is coming thorough  Controller -->
						
							<tr>
							<!-- we are getting image from server local storage and rest data from H2 DataBase -->
								<td><img alt=""
									src="${cp}/resources/image/productimages/${product.id}.jpg"
									height="100ppx" width="100px" /></td>
								<td class="active">${product.id}</td>
								<td align="left">${product.name}</td>
								<td>${product.desc}</td>
								<td>${product.price}</td>
								<td><a href="<c:url value="checkout"/>"  class="btn btn-primary btn-lg">Add to Cart</a>
								</td>
							
							</tr>
						
					</tbody>
				</table>

			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>


<%@ include file="foot.jsp" %>

