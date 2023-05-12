<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Specialist"%>
<%@page import="com.entity.Doctor"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/css.jsp"%>
<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-5 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Hospital Staff Payroll</p>
						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg}">
							<div class="text-center text-success fs-3" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<form action="../payroll" method="post">
							<div class="mb-3">
								<label class="form-label">FirstName</label> <input type="text"
									name="fname" class="form-control" required>
							</div>

							<div class="mb-3">
								<label class="form-label">LastName</label> <input type="text"
									name="lname" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">DateOfBirth</label> <input
									type="date" name="dob" class="form-control" required>
								
							</div>
							<div class="mb-3">
								<label class="form-label">Gender</label> 
								<input
									type="text" name="gender" class="form-control" required>
								
							</div>
								
							</div>
							<div class="mb-3">
								<label class="form-label">Speciality</label> <input type="text"
									name="speciality" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">YearOfExperience</label> <input type="text"
									name="year_of_experience" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">BaseSalary</label> <input type="text"
									name="base_salary" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Bonus</label> <input type="text"
									name="bonus" class="form-control" required>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>