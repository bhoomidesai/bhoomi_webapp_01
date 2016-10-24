<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%@ include file="head.jsp"%>


<form:form method="Post" action="${cp}/admin/insert"
	modelAttribute="product" enctype="multipart/form-data">

	<form:errors path="*"/>

	<div class="panel panel-default">
		<div class="panel-heading">
			<B>${pro} Product Details</B>
		</div>
		<article role="login">
			<table class="table table-responsive" align="center">
				<tr>
					<td><form:label path="name">Product Name</form:label></td>
					<td><form:input path="name" cssClass="error" />
					<form:hidden path="id" />
					</td>
					<td><span><form:errors path="name" cssclass="error" /></span></td>

				</tr>
				<tr>
					<td><form:label path="desc">Version</form:label></td>
					<td><form:input path="desc" cssClass="error" /></td>
					<td><span><form:errors path="desc" cssclass="error" /></span>
				</tr>
				<tr>
					<td><form:label path="price">Price</form:label></td>
					<td><form:input path="price" cssClass="error" /></td>
					<td><span><form:errors path="price" cssclass="error" /></span>
				</tr>
				<tr>
					<td><form:label path="Supplier">Supplier</form:label></td>
					<td><form:input path="Supplier" cssClass="error" />
					<td><span><form:errors path="Supplier" cssclass="error" /></span></td>
				</tr>
				<tr>
					<td><form:label path="file">Upload image</form:label></td>
					<td><form:input path="file" type="file" class="form-control"
							placeholder="Select File" />
				</tr>
				<tr>
					<td><input type="Submit" class="button button2" value="Save">
					</td>
				</tr>
			</table>
		</article>
	</div>

</form:form>




<c:if test="${!empty products}">
	<table class="table table-responsive">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Version</th>
			<th>Price</th>
			<th>Image</th>
			<th align="center">Edit Delete</th>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.price}</td>
				<td>${product.desc}</td>
				<td><img src="${product}/${product.id}.jpg"
					alt="${product.name}" /></td>

				<%--  <td>${product.Supplier}</td> --%>
				<td><a href="${cp}/admin/edit/${product.id}"><button
							class="button button2">Edit</button></a></td>
				<td><a href="${cp}/admin/delete/${product.id}"><button
							class="button button3">Delete</button></a></td>

			</tr>
		</c:forEach>
	</table>
</c:if>
<a href="${cp}/admin/addc"><button
							class="button button3">Add Categories</button></a>

<%@ include file="foot.jsp"%>


