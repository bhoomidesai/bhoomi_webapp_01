<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<c:set var="cp" value="${pageContext.request.contextPath}"/>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
<script src="/resources/js/angular.min.js"></script>
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<link rel="stylesheet" href="${css}/bootstrap.min.css" />
</head>
<body>

<nav role="navigation" class="navbar navbar-inverse">
  <div class="container-fluid">
  <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
      <a class="navbar-brand" href="<c:url value="index" />"><span class="glyphicon glyphicon-home"></span></a>
    </div>
    <div id="navbarCollapse" class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
      <li><a href="${cp }/contact">Contact us</a></li>
      <li><a href="${cp }/about">About us</a></li> 
      <li><a href="${cp }/viewlist">view all</a></li>
      <li><a href="${cp }/admin/viewall">Admin</a></li>
      <li><a href="${cp }/">Logout</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="${cp}/cart"><span class="glyphicons glyphicons-cart-tick"></span> Cart</a></li>
      <li><a href="${cp }/reg/reg"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="${cp }/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    </div>
  </div>
</nav>
