<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="conn" 
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:XE"
	user="system"
	password="vineela"
	/>
<sql:query var="employQuery" dataSource="${conn}">
	    select * from EmployNew
   </sql:query>
   <table border="3">
   	<tr>
   		<th>Employ No</th>
   		<th>Employ Name</th>
   		<th>Gender</th>
   		<th>Department</th>
   		<th>Designation</th>
   		<th>Basic</th>
   	</tr>
   	<c:forEach var="e" items="${employQuery.rows}">
   		<tr>
   			<td><c:out value="${e.empno}"/> </td>
   			<td><c:out value="${e.name}"/> </td>
   			<td><c:out value="${e.gender}"/> </td>
   			<td><c:out value="${e.dept}"/> </td>
   			<td><c:out value="${e.desig}"/> </td>
   			<td><c:out value="${e.basic}"/> </td>
   		</tr>
   	</c:forEach>
   </table>
</body>
</html>