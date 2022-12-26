<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Form</title>
<style type="text/css">
	h4{
		margin-left:460px;
		text-align:left;	
	}
	label {
		display: inline-block;
		width: 200px;
		margin: 5px;
		text-align: left;
	}
	input[type=text], input[type=date], select {
		width: 200px;	
	}
	
	input[type=checkbox] {
		display: inline-block;
		margin-right: 90px;
	}	
	
	button {
		padding: 10px;
		margin: 10px;
	}
	.error {
    color: red;
    font-style: italic;
}
</style>
</head>
<body>
	<div align="center">
		<h2>User Registration</h2>
		<form:form action="register" method="post" modelAttribute="user">
			<form:label path="name">First name:</form:label>
			<form:input path="name"/>			
<%-- 			<form:errors path="name" cssClass="error" /><br/>	
 --%>			
			<form:label path="lastname">Last name:</form:label>
			<form:input path="lastname"/>
<%-- 			<form:errors path="lastname" cssClass="error" /><br/>	
 --%>			
			
			<form:label path="email">E-mail:</form:label>
			<form:input path="email"/>
			<form:errors path="email" cssClass="error" /><br/>	
			
			<form:label path="birthday">Birthday:</form:label>
			<form:input path="birthday" type="date"/><br/>
			
			<form:label path="mobno">Mobile No:</form:label>
			<form:input path="mobno"/><br/>
			
			<form:label path="address">Address:</form:label>
			<form:textarea path="address" cols="25" rows="5"/>		
<%-- 			<form:errors path="address" cssClass="error" /><br/>	
 --%>		
			<form:label path="state">State:</form:label>
			<form:input path="state"/>
<%-- 			<form:errors path="state" cssClass="error" /><br/>	
 --%>			
			
			<form:label path="city">City:</form:label>
			<form:input path="city"/>
<%-- 			<form:errors path="city" cssClass="error" /><br/>	
 --%>			
				
			<form:label path="pincode">Pincode:</form:label>
			<form:input path="pincode"/><br/>
			
			<form:label path="standard">Standard:</form:label>
			<form:select path="standard" items="${standardList}" /><br/>
			
			
			<!-- <form:label path="subjects">Subjects:</form:label><br/> -->
			
			<h4>Subjects:</h4><br/>
			
			<form:label path="subjects">Java:</form:label>
			<form:checkbox path="subjects" value="Java"/><br/>
			
			<form:label path="subjects">Oracle:</form:label>
			<form:checkbox path="subjects" value="Oracle"  /><br/>
			
			<form:label path="subjects">Mysql:</form:label>
			<form:checkbox path="subjects" value="Mysql"/><br/>
			<form:button>Register</form:button>
		</form:form>
	</div>
</body>
</html>