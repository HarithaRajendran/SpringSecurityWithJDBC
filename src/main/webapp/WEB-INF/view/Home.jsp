<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<html>
	<head><title>Home Page</title></head>
	<body>
		Welcome &nbsp;<security:authentication property="principal.username"/>
		
		
		<br>
		<hr>
		<br>
		<security:authorize access="hasRole('MANAGER')">
			<a href="${pageContext.request.contextPath}/leader">Leader Link</a>
		</security:authorize>
		
		<hr>
		<br>
		<security:authorize access="hasRole('ADMIN')">
		<a href="${pageContext.request.contextPath}/system">Admin Link</a>
		</security:authorize>
		<br><br>
		<form:form action= "${pageContext.request.contextPath}/logout" method="POST">	
			<input type="submit" value="Logout"/>
		</form:form>
		
	</body>
</html>