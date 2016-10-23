<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
 <%@ include file="head.jsp" %>
<form:form method="Post" action="${cp}/admin/insert" modelAttribute="product">
	

	<div class="panel panel-default">
			<div class="panel-heading">
				<B>${pro} Product Details</B>
			</div>
			<article role="login">
				<table class="table table-responsive" align="center">
					<c:if test="${!empty product.name}">
						<tr><td>
							<form:input path="id" readonly="true" size="8"  disabled="true" />
							<form:hidden path="id" />
						</td></tr>
						<tr>		
						<td><input path="id" />
							<errors path="id" cssclass="error" readonly="true" />
							<spring:message text="ID" /></td>
							
						</tr>
					</c:if>
				</table>
					<div class="form-group">
					<table class="responsive">
						<tr><td><form:label path="name">Product Name</form:label></td>
							<td><form:input path="name" cssClass="error"/><errors path="name" cssclass="error" /></td>
						<td><span><form:errors path="name" cssclass="error"/></span></td>
						
						</tr>
					<div class="panel-body">
					<tr>
						<td><form:label path="desc">Version</form:label></td>
						<td><form:input path="desc" cssClass="error"/><errors path="desc" cssclass="error" /></td>
						<td><span><form:errors path="desc" cssclass="error"/></span>
					</tr>
					</div>
					<div class="panel-body">
					<tr>	<td><form:label path="price">Price</form:label></td>
						<td><form:input path="price" cssClass="error"/><errors path="desc" cssclass="error" /></td>
						<td><span><form:errors path="price" cssclass="error"/></span>
					</tr>
					</div>
					<div class="form-group">
					<tr>
						<td><form:label path="Supplier">Supplier</form:label></td>
						<td><form:input path="Supplier" cssClass="error" />
						<td><span><form:errors path="Supplier" cssclass="error"/><span>
						</td>
					</tr>
					<tr>
						<td><form:label path="file">Upload image</form:label></td>
						<td>						<form:input path="file" type="file" class="form-control" placeholder="Select File" />
											</tr>
						</td>
					</tr>
					</div>
					<div class="panel-body">
					<tr><td>
												<a href=""${cp }/admin/insert"><button class="button button2">Save</button></a>
							</td>	
					</tr>
					</div>
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
				<th>Suppier</th>
				<th align="center">Edit Delete</th>
						</tr>
			<c:forEach items="${products}" var="product">
						<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.price}</td>
				<td>${product.desc}</td>
				
				<%--  <td>${product.Supplier}</td> --%>				
				<td>
				<a href="${cp}/admin/edit/${product.id}"><button class="button button2">Edit</button></a>
				</td>
				<td>
				<a href="${cp}/admin/delete/${product.id}"><button class="button button3">Delete</button></a>
				</td>

				</tr>
			</c:forEach>
					</table>
</c:if>

<%@ include file="foot.jsp" %>


