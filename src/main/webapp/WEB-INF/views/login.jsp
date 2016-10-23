<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>

<div class="container" align="center"><br/><br/>
	<div class="panel panel-default" style="hight: 100px; width: 40%;">
		<div class="panel-heading" align="center">
			<b>Login</b>
		</div>
		<div class="panel-body">
			 <input class="form-control"
				id="ex3" type="text" placeholder="Username" style="hight: 100px; width: 100%;">
		</div>
		<div class="panel-body">
			 <input class="form-control"
				id="ex3" type="password" placeholder="Password" style="hight: 100px; width: 100%;">
		</div>
		<div class="panel-body">
			 <a><href src="<c:url value="${cp}/login" />" class="btn btn-primary btn-md">Login</href></a>
		</div>
	</div>
</div>
<%@ include file="foot.jsp" %>


