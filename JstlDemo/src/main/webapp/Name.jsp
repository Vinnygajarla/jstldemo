<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="fname" value="${param.firstName}" /> 
	<c:set var="lname" value="${param.lastName}"/>
	
	First Name : <b> <c:out value="${fname}"/> </b>
	<br/>
	Last Name : <b> <c:out value="${lname}"/> </b>
</body>
</html>