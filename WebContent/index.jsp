<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>KANews</title>
</head>
<body>
	<a href="login.jsp">Login</a>
	<c:set scope="session" var="user" value="${param.user }"></c:set>
	Welcome:
	<c:out value="${param.user }"></c:out>
	<c:if test="${user==null}">
		Guest
	</c:if>
</body>
</html>