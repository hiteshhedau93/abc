<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="row justify-content-center align-items-center min-vh-100">
			<div class="col-sm-8 col-md-6 ">
				<h2 class="text-center mb-4">Edit User</h2>
				<c:if test="${not empty user }">

					<form action="${pageContext.request.contextPath}/updateUser"
						method="post">

						<input type="hidden" name="id" value="${user.id}">
						<div class="form-group">
							<label for="name">Name:</label> <input type="text"
								class="form-control" id="name" name="name" value="${user.name }"
								required>
						</div>

						<div class="form-group">
							<label>Gender:</label>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									id="male" value="male" required
                                ${user.getGender().equals('male') ? 'checked' : ''}>
								<label class="form-check-label" for="male">Male</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									id="female" value="female"
									${user.getGender().equals('female') ? 'checked' : ''}>
								<label class="form-check-label" for="female">Female</label>
							</div>
						</div>
						<div class="form-group">
							<label for="email">Email:</label> <input type="email"
								class="form-control" id="email" name="email"
								value="${user.email}" required>
						</div>
						<div class="form-group">
							<label for="password" class="form-label">Password</label> <input
								type="password" class="form-control" name="password"
								id="password" value="${user.password }" required="required">
						</div>
						<div class="form-group">
							<label for="dob">Date of Birth:</label> <input type="date"
								class="form-control" id="dob" name="dob" value="${user.dob }"
								required>
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
					</form>
					<a href="${pageContext.request.contextPath}/dashboard"><button
							class="btn btn-warning">Back</button></a>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>