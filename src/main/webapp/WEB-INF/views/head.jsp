<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<c:set var="cp" value="${pageContext.request.contextPath}" />


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to iStore</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
<script src="${cp }/resources/js/angular.min.js"></script>
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<link rel="stylesheet" href="${css}/bootstrap.min.css" />
</head>
<body>

	<nav role="navigation" class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" data-target="#navbarCollapse"
					data-toggle="collapse" class="navbar-toggle">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<c:url value="index" />"><span
					class="glyphicon glyphicon-home"><b>iStore.com</b></span></a>
			</div>
			<div id="navbarCollapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="${cp }/contact">Contact us</a></li>
					<li><a href="${cp }/about">About us</a></li>
					<li><a href="${cp }/viewlist">view all</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="${cp }/viewlist">Category <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${cp }/viewlist/iphone">iPhone</a></li>
							<li><a href="${cp }/viewlist/ipad">iPad</a></li>
							<li><a href="${cp }/viewlist/mac">Macbook</a></li>
						</ul></li>

					<li><span class="glyphicons glyphicons-shopping-cart">
							<sec:authorize access="hasRole('ROLE_USER')">
								<li><a href="${cp}/cart">View Cart</a></li>
							</sec:authorize> <sec:authorize access="isAnonymous()">
								<li><a href="<c:url value="/login" />">View Cart</a></li>
							</sec:authorize>
					</span></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
					<!-- code for security -->
				<sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin">
						<li><a href="${cp }/admin/viewall">Admin</a></li>
						<li><a href="<c:url value="/logout" />">Logout</a></li>
				</sec:authorize>
					<sec:authorize access="hasRole('ROLE_USER')" var="isUser">
					<li><a href="<c:url value="/logout" />">Logout</a></li>
					</sec:authorize>

					<c:if test="${(isAdmin)  || (isUser)}">
						  
					</c:if>
				<c:choose>
				<c:when test="${(isAdmin)  || (isUser)}">
				</c:when>
				<c:otherwise>
					<li><a href="${cp }/reg/reg"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
							<li><a href="${cp }/login"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
							
					
				</c:otherwise>
			</c:choose>
				</ul>
			</div>
		</div>
	</nav>