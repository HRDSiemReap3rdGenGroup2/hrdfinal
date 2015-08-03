<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home | Kanews</title>
</head>
<body>
	<c:set var="logstatus" value="${sessionScope.logstatus}"></c:set>
	<c:if test="${logstatus=='failed'}">
		<span style="color:red">Incorrect username and password!</span>
	</c:if>
	<c:set var="user" value="${sessionScope.user }"></c:set>
	<c:out value="${user}"></c:out>
	<c:choose>
		<c:when test="${user=='' || user==null }">
		<form action="user/login" method="POST">
		Username:<input type="text" name="username"><br/>
		Password:<input type="password" name="password"><br/>
		<input type="submit" value="Sign in">
		</form>
		</c:when>
		<c:otherwise>
			<a href="user/signout">Sign out</a>
			<a href="admin">Admin</a>
		</c:otherwise>
	</c:choose>
	<c:set var="logstatus" scope="session" value="${'' }"></c:set>
</body>
</html>