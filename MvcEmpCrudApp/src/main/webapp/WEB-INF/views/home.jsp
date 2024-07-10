<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<style><%@include file="/WEB-INF/css/home.css"%></style>


</head>
<body>

	<%@ include file="navbar.jsp"%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header text-center text-white">
						<h3>All Employee Details</h3>
						<c:if test="${not empty msg}">
							<div class="alert alert-primary mt-3" role="alert">
								${msg}
								<c:remove var="msg" />
							</div>
						</c:if>
					</div>
					<div class="card-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Full Name</th>
									<th scope="col">Address</th>
									<th scope="col">Email</th>
									<th scope="col">Designation</th>
									<th scope="col">Salary</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="employee" items="${employeeList}">
									<tr>
										<th scope="row">${employee.id}</th>
										<td>${employee.fullname}</td>
										<td>${employee.address}</td>
										<td>${employee.email}</td>
										<td>${employee.designation}</td>
										<td>${employee.salary}</td>
										<td><a href="editEmp/${employee.id}" class="btn btn-sm btn-primary">Edit</a> <a
											href="deleteEmp/${employee.id}" class="btn btn-sm btn-danger">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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
