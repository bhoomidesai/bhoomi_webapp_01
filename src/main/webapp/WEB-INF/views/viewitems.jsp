<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="head.jsp" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

	<div ng-app="myApp" ng-controller="myCtrl" ng-init="test='${pro}'">
		<div class="container" align="center">
			<div class="panel panel-default">
				<div class="panel-heading"><B>${pro} List</B></div>
				<div class="panel-body">
					<input type="text" class="form-control input-lg" ng-model="test" placeholder="Search"><br />
					<table class="table table-responsive">
						<tr>
				<th ng-click="orderByMe('id')">ID</th>			
				<th ng-click="orderByMe('name')">Name</th>
				<th ng-click="orderByMe('desc')">Version</th>
				<th ng-click="orderByMe('price')">Price</th>
				<th ng-click="orderByMe('Supplier')">Suppier</th>
				
							<th align="center">View Edit Delete Add To Cart</th>
						</tr>
						<tr ng-repeat="x in names | orderBy:myOrderBy | filter:test">
				<td align="center">{{x.id}}</td>
				<td align="center">{{x.name}}</td>
				<td align="center">{{x.desc}}</td>
				<td align="center">{{x.price}}</td>
				<td align="center">{{x.Supplier}}</td>
							<td><a href="${cp }/xplor/{{x.id}}"><button class="button button1">View</button></a>
							 <a href="${cp }/add" id="iphn"><button class="button button5">Add To Cart</button></a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div><script src="${cp }/resources/js/ex.js"></script> 
	<%@ include file="foot.jsp" %>