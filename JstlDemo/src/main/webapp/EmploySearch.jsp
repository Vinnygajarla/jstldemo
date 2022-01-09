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
<form method="get" action="EmploySearch.jsp">
<center>
Employ No:
<input type="number" name="empno"/><br/><br/>
<input type="submit" value="search"/>
</center>
</form>
<c:if test="${param.empno !=null}">
			<sql:setDataSource var="conn" 
				driver="oracle.jdbc.driver.OracleDriver"
				url="jdbc:oracle:thin:@localhost:1521:XE"
				user="system"
				password="vineela"
			/>
			<sql:query var="employQuery" dataSource="${conn}">
	    		select * from EmployNew where empno=?
	    		<sql:param value="${param.empno}"/>
   			</sql:query>	
   			<c:set var="flag" value="0" />
   			<c:forEach var="e" items="${employQuery.rows}">
	Employ No : 
	<c:out value="${e.empno}"/> <br/>
	Employ Name : 
	<c:out value="${e.name}"/> <br/>
	Gender : 
	<c:out value="${e.gender}"/> <br/>
	Department : 
	<c:out value="${e.dept}"/> <br/>
	Designation : 
	<c:out value="${e.desig}"/> <br/>
	Basic :
	<c:out value="${e.basic}"/> <br/> <hr/>
	<c:set var="flag" value="1" />
</c:forEach>
<c:if test="${flag==0}">
	<c:out value="Record Not Found..."/>
</c:if>
   			
	</c:if>
</body>
</html>