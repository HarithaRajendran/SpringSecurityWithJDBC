<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head><title>Login Page</title></head>
	<body>
		
		<form:form action= "${pageContext.request.contextPath}/authenticateTheUser" method="POST">
		
			<c:if test="${param.error!=null}">
				<i>wrong credentials... </i>
			</c:if>
			
			<c:if test="${param.logout!=null}">
				<i>logged out successfully... </i>
			</c:if>
			
			
			
			<p>
				User Name : <input type ="text" name="username"/>
			<br><br>
			</p>
			<p>
				Password : <input type="password" name="password" />
			<br><br>
			</p>
			
			
			<input type="submit" value="login" />
						
		</form:form>
		
		
		
		
	</body>
</html>