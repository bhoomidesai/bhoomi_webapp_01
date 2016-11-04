<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<spring:url value="/resources/images" var="img" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%@ include file="head.jsp"%>
<form method="post">
	<div class="container">
		<div class='row'>
			<div class='col-md-4'></div>
			<div class='col-md-5'>
				<script src='https://js.stripe.com/v2/' type='text/javascript'></script>
				<div style="margin: 0; padding: 0; display: inline">
					<input name="utf8" type="hidden" value="✓" /><input name="_method"
						type="hidden" value="PUT" /><input name="authenticity_token"
						type="hidden" value="qLZ9cScer7ZxqulsUWazw4x3cSEzv899SP/7ThPCOV8=" />
				</div>
				<div class='form-row'>
					<div class='col-xs-12 form-group required'>
						<label class='control-label'>Name on Card</label> <input
							class='form-control' size='4' type='text' required="required">
					</div>
				</div>
				<div class='form-row'>
					<div class='col-xs-12 form-group card required'>
						<label class='control-label'>Card Number</label> <input
							autocomplete='off' class='form-control card-number' size='20'
							type='text' required="required">
					</div>
				</div>
				<div class='form-row'>
					<div class='col-xs-4 form-group cvc required'>
						<label class='control-label'>CVC</label> <input autocomplete='off'
							class='form-control card-cvc' placeholder='ex. 311' size='4'
							type='text' required="required">
					</div>
					<div class='col-xs-4 form-group expiration required'>
						<label class='control-label'>Expiration</label> <input
							class='form-control card-expiry-month' placeholder='MM' size='2'
							type='text' required="required">
					</div>
					<div class='col-xs-4 form-group expiration required'>
						<label class='control-label'> </label> <input
							class='form-control card-expiry-year' placeholder='YYYY' size='4'
							type='text' required="required">
					</div>
				</div>
				<div class='form-row'>
					<div class='col-md-12' align="center">
						<a href="${cp }/cart/ty" class="button button1">Pay</a>
						<span class='amount'></span>
						<div class='form-row'></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>


<%@ include file="foot.jsp"%>

