<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*,javax.servlet.*,java.util.Properties"%>
<jsp:include page="MenuBar.jsp"></jsp:include>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.center {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 7rem;
	letter-spacing: 10px;
	text-transform: uppercase;
}
p {
	position: absolute;
	top: 60%; 
	left: 50%; 
	transform: translate(-50%, -50%);
	letter-spacing: 5px;
	text-transform: uppercase;  
}
</style>
</head>
<body style="background-color: black;">
	<h1 class="center">ErrorLog</h1>
	<p style="text-transform: uppercase;">Find Your Problem's and solve it here</p>
</body>
</html>