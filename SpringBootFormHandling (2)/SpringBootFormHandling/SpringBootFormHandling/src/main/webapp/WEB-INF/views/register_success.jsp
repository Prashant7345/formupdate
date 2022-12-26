<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
<style type="text/css">
	span {
		display: inline-block;
		width: 200px;
		text-align: left;
	}
</style>
</head>
<body>

	<div align="center">
		<h2>Employee List</h2>
		<table border="1">
		<tr>
			<th>Full name<th/>
			<th>Last name<th/>
			<th>E-mail:<th/>
			<th>Birthday<th/>
			<th>Mobile No<th/>
			<th>state<th/>
			<th>Pincode<th/>
			<th>City<th/>
			<th>Standard<th/>
			<th>Subjects:<th/>
		<tr/>
		
		<c:forEach var="user" items="${listUsers}">		
		
		<tr>
					<td>${user.name}</td>
					<td>${user.lastname}</td>
					<td>${user.email}</td>
					<td>${user.mobno}</td>
					<td>${user.state}</td>
					<td>${user.city}</td>
					<td>${user.pincode}</td>
					<td>${user.standard}</td>
				</tr>
			</c:forEach>
		</table>
		<span>Full name:</span><span>${user.name}</span><br/>
		<span>Last name:</span><span>${user.lastname}</span><br/>
		<span>E-mail:</span><span>${user.email}</span><br/>
		<span>Birthday:</span><span>${user.birthday}</span><br/>
		<span>Mobile No:</span><span>${user.mobno}</span><br/>
		<span>state :</span><span>${user.state}</span><br/>
		<span>City:</span><span>${user.city}</span><br/>
		<span>Pincode:</span><span>${user.pincode}</span><br/>
		<span>Standard:</span><span>${user.standard}</span><br/>
		<span>Subjects:</span><span>${user.subjects[0]}, ${user.subjects[1]}, ${user.subjects[2]}</span><br/>
	</div>
</body>
</html>