<b:beans xmlns="http://www.springframework.org/schema/security"
	xmlns:b="http://www.springframework.org/schema/beans" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd
						http://www.springframework.org/schema/security http://www.springframework.org/schema/security/spring-security.xsd">

	<http auto-config="true">
		<intercept-url pattern="/admin/**" access="hasRole('ROLE_ADMIN')" />
		<intercept-url pattern="/user/**" access="hasRole('ROLE_USER')" />		
		<intercept-url pattern="/" access="permitAll" />
		<intercept-url pattern="/product/all" access="permitAll" />
		
		<form-login login-page="/login" default-target-url="/"
			username-parameter="userid" password-parameter="password"
			authentication-failure-url="/login?success=false" />


		<csrf disabled="true" />
	</http>

	<!-- <user-service> <user name="user" password="password" authorities="ROLE_USER" 
		/> </user-service> -->

	<!-- Authentication using database connection -->
	<authentication-manager>
		<authentication-provider>
			<jdbc-user-service data-source-ref="dataSource"
				users-by-username-query="select email,pwd, enabled from registration where email=?"
				authorities-by-username-query="select userrole, role from user where email =?  " />
		</authentication-provider>
	</authentication-manager>

</b:beans>