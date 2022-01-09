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
<form method="get" action="EmployInsert.jsp">
		<center>
			Employ No : 
			<input type="number" name="empno"> <br/><br/>
			Employ Name : 
			<input type="text" name="name" /> <br/><br/> 
			Gender :
			<select name="gender">
				<option value="MALE">Male</option>
				<option value="FEMALE">Female</option>
			</select> <br/><br/> 
			Department : 
			<input type="text" name="dept" /> <br/><br/>
			Designation : 
			<input type="text" name="desig" /> <br/><br/> 
			Basic : 
			<input type="number" name="basic" /> <br/><br/> 
			<input type="submit" value="Add Employ" />
		</center>
	</form>
<c:if test="${param.empno!=null && param.basic!=null}">
			<sql:setDataSource var="conn" 
				driver="oracle.jdbc.driver.OracleDriver"
				url="jdbc:oracle:thin:@localhost:1521:XE"
				user="system"
				password="vineela"
			/>
	<sql:update var="empUpdate" dataSource="${conn}">
		Insert into EmployNew(empno,name,gender,dept,desig,basic) values(?,?,?,?,?,?)
		<sql:param value="${param.empno}" />
		<sql:param value="${param.name}" />
		<sql:param value="${param.gender}"/>
		<sql:param value="${param.dept}" />
		<sql:param value="${param.desig}" />
		<sql:param value="${param.basic}" />
	</sql:update>
	<c:out value="Record Inserted..." />
</c:if>
</body>
</html>