<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center fs-3">Register Page</div>
					<p class="fs-bold text-center">${msg }</p>
					<div class="card-body">
						<form action="createUser" method="post">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Full
									Name </label> <input type="text" class="form-control" name="name"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control" name="email"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">DOB </label>
								<input type="date" class="form-control" name="dob"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="form-group mb-3">
								<label>Gender:</label>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="gender"
										id="male" value="male" required> <label
										class="form-check-label" for="male">Male</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="gender"
										id="female" value="female"> <label
										class="form-check-label" for="female">Female</label>
								</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control" name="password"
									id="exampleInputPassword1">
							</div>
							
							<button type="submit" class="btn btn-primary col-md-12">Register</button>
						</form>

					</div>

				</div>
				<span>Back to <a href="home">home</a> page
				</span>
			</div>

		</div>
	</div>




</body>
</html>