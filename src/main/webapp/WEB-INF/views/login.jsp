<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
 <%@ include file="head.jsp" %>
 
<form class="form-signin" >
<div class="container">
    		<h3>Please Login</h3>
    		<hr/>
        <div class="row">
        		<%-- Login form code --%>
        		<div class="col-md-offset-2 col-md-8">
			   <div class="form-group">
		        <label for="inputEmail" class="sr-only">Email address</label>
		        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>			   
			   </div>
			   <div class="form-group">			   
		        <label for="inputPassword" class="sr-only">Password</label>
		        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
		       </div>
		       <div class="form-group">
		        <div class="checkbox">
		          <label>
		            <input type="checkbox" value="remember-me"> Remember me
		          </label>
		        </div>
		        </div>
		        <button class="btn btn-sm btn-primary" type="submit">Sign in</button>
		      </form>

</form>
<%@ include file="foot.jsp" %>


