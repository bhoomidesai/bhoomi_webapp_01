<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/resources/images" var="img" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>
 
 <form:form method="Post" action="${cp}/cart/all" modelAttribute="user">
		 </form:form>
 
 
 <!-- display from Cart table through angular JS -->
 <div ng-app="myApp" ng-controller="myCtrl">
	<table class="table table-responsive">
		<tr>
			<th align="center">ID</th>
			<th align="center">Name</th>
			<th align="center">Price</th>
			<th align="center">Version</th>
			<th align="center">Supplier</th>
			<th align="center">Quantity</th>
			<th align="center"> Delete</th>
		</tr>
		<tr ng-repeat="x in names | orderBy:myOrderBy | filter:test">
				<td align="center">{{x.id}}</td>
				<td align="center">{{x.name}}</td>
				<td align="center">{{x.price}}</td>
				<td align="center">{{x.desc}}</td>
				<td align="center">{{x.qty}}</td>
				<td align="center">{{x.Supplier}}</td>
				<td><button class="button button3">Delete</button></td>
		</tr>
	</table>
	</div><script src="${cp }/resources/js/ex.js"></script>
<%@ include file="foot.jsp" %>

