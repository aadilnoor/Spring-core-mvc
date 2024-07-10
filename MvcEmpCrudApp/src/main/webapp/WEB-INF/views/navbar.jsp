<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<style><%@include file="/WEB-INF/css/navbar.css"%></style>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="home"><i class="fas fa-briefcase"></i>
				Employee Management System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home"><i class="fas fa-home"></i>
							Home</a></li>
					<li class="nav-item"><a class="nav-link active" href="addEmp"><i
							class="fas fa-user-plus"></i> Add Employee</a></li>
				</ul>
				<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" href="login"><i
							class="fas fa-sign-in-alt"></i> Login</a></li>
					<li class="nav-item"><a class="nav-link active" href="register">
							<i class="fas fa-user-plus"></i> Register
					</a></li>

				</ul>
				<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" href="myProfile"><i
							class="fas fa-user"></i> Profile</a></li>
					<li class="nav-item"><a class="nav-link active" href="logout"><i
							class="fas fa-sign-out-alt"></i> Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXlqNHousfS7fV70XWx2kPjaZ5wFb6U6MRt71HRFTqetjokP0F60PIeQ95N2"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVDB2LjB1m9xKpES1trnLv4SzWfIMomM13x8Zne8DXi5y8Gf4lLEhCk9kC6PMwH5"
		crossorigin="anonymous"></script>

</body>
</html>
