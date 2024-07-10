<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<style><%@include file="/WEB-INF/css/styles.css"%></style>

</head>
<body>

	<%@ include file="navbar.jsp"%>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-8 col-lg-6">
				<div class="card">
					<div class="card-header text-center text-white bg-primary">
						<h2>Register Page</h2>
						<c:if test="${not empty msg}">
							<div class="alert alert-primary mt-3" role="alert">
								${msg}
								<c:remove var="msg" />
							</div>
						</c:if>
					</div>
					<div class="card-body">
						<form action="createUser" method="post">
							<div class="mb-3">
								<label for="fullname" class="form-label">Full Name</label> <input
									type="text" id="fullname" name="fullname" class="form-control"
									required>
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">Email</label> <input
									type="email" id="email" name="email" class="form-control"
									required>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" id="password" name="password"
									class="form-control" required>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

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
