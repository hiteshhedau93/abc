
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>

	

	<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-md-8">
				<h2 class="text-center">User Table</h2>
				<table class="table table-sm table-bordered">
					<thead>
						<tr>
							<th scope="col">Email</th>
							<th scope="col">Name</th>
							<th scope="col">Password</th>
							<th scope="col">DOB</th>
							<th scope="col">gender</th>
							
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					
					
						<c:forEach items="${users }" var="user">
							<tr>
								<td>${user.email }</td>
								<td>${user.name }</td>
								<td>${user.password }</td>
								<td>${user.dob }</td>
								<td>${user.gender }</td>
								
								<td><a href="editUser/${user.id }"
									class="btn btn-sm btn-warning">Edit</a> <a
									href="delete/${user.id }" class="btn btn-sm btn-danger">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
					<span>Back to <a href="home">home</a>  page</span> 
			</div>
		</div>
	</div>
</body>
</html>


