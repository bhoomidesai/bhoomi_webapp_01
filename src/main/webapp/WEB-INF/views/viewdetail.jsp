<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:url value="/resources/images" var="img"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>

<div class="container">
	<div class="panel panel-default" style="hight: 100px; width: 100%;">
	<div class="panel-heading" align="center">
			<b>${pro} Detail</b>
	</div>
	<table  ng-app="myApp" ng-controller="myCtrl" ng-init="test='${id}'">
	<tr>
		<td style="height: 500px;padding:0%; width: 60%; overflow: hidden;">
			<img src="${img}/6.jpg" alt="Card image cap" style="height: 500px;padding:8%; width: 100%; overflow: hidden; cursor: pointer">
		</td>
		<td>
		<table>
		<tr>
			<td>
			<div class="panel-heading" align="left"  ng-app="myApp" ng-controller="myCtrl" ng-init="test='${id}'">
			<b>Product : iPhone {{x.name}}</b>
			</div>
			<div class="panel-heading" align="left">
			<b>Version Description :</b>
			</div>
			<div class="panel-heading" align="left">
			<b>Price :</b>
			</div>
			<div class="panel-heading" align="left">
			<b>Supplier :</b>
			</div>
			</td>
			</tr>
			<tr><td>
			<a href="<c:url value="" />"><button class="button button1">Add to Cart</button></a>
			</td>
			<td><a href="<c:url value="${cp }/view" />"><button class="button button2">Back</button></a></td></td>
			</tr>
	</table>
	</td>
</tr>

</table>
				
</div>
</div><script src="resources/js/ex.js"></script>	
<%@ include file="foot.jsp" %>

