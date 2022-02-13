<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="MenuBar.jsp"></jsp:include>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.result {
	position: fixed;
	width: 93%;
	height: 70%;
	margin-top: 1rem;
	margin-left: 3rem;
	margin-right: 3rem;
	margin-bottom: 2rem;
}

.card {
	background-color: currentColor;
}

input {
	background-color: transparent;
	color: white;
	font-style: italic;
	border-block-style: unset;
}

.list-group-item {
	height: 5rem;
}
</style>
<style>
/* width */
::-webkit-scrollbar {
	width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
	box-shadow: inset 0 0 5px grey;
	border-radius: 10px;
}

/* Handle */
::-webkit-scrollbar-thumb {
	background: #767474;
	border-radius: 10px;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
	background: #b30000;
}

.center {
	position: absolute;
	color: white;
	font-size: 3rem;
	letter-spacing: 10px;
	text-transform: uppercase;
}
 
</style>
</head>
<body style="background-color: black;">
	<div class="card"
		style="margin-top: 1rem; margin-left: 3rem; margin-right: 3rem;">
		<div class="card-body">
			<input type="text" style="height: 50px; width: 85%"
				placeholder=" Search Here!" />
			<button type="button"
				style="height: 45px; width: 13%; margin-left: 1rem;font-family: cursive;" 
				class="btn btn-primary">Search</button>
		</div> 
	</div>
	<div class="card result">
		<div class="card-header" style="color: white;font-family: cursive;">Showing Results</div>

	 	 <ul class="list-group list-group-flush" style="overflow-y: scroll;">
				<c:forEach var="item" items="${list}">
			<li class="list-group-item">
				<h5 class="card-title" style="font-family: fantasy;">${item}</h5>
				<p class="card-text" style="font-family: serif">Answer : ${item}</p>
			</li>
			</c:forEach>
		</ul>
		<c:if test="${list.size() eq 0}">
		<div class="card-body align-items-center d-flex justify-content-center">
			<h1 style="color:white !important;font-style: italic;font-family: monospace;">Wating For Search</h1>
		</div>
		</c:if> 
	</div> 
</body>
</html>