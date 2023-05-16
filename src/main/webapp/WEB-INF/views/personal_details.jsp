<%@include file="include/header.jsp"%>
		<div class="container1">
			<div class="row">
				<div class="col-sm-12">
					<header>Profile</header>
				</div>
			</div>
			<div class="row">
				<div class="progress-bar1 .bg-white">
					<div class="step col-sm-4">
						<p>Personal Details</p>
						<div class="bullet bg-primary">
							<span>1</span>
						</div>
						<div class="check fas fa-check"></div>
					</div>
					<div class="step col-sm-4">
						<p>Education</p>
						<div class="bullet">
							<span>2</span>
						</div>
						<div class="check fas fa-check"></div>
					</div>
					<div class="step col-sm-4">
						<p>Skills</p>
						<div class="bullet">
							<span>3</span>
						</div>
						<div class="check fas fa-check"></div>
					</div>
					<div class="step col-sm-4">
						<p>Projects</p>
						<div class="bullet">
							<span>4</span>
						</div>
						<div class="check fas fa-check"></div>
					</div>
					<div class="step col-sm-4">
						<p>Achievements</p>
						<div class="bullet">
							<span>5</span>
						</div>
						<div class="check fas fa-check"></div>
					</div>
				</div>
			</div>
			<div class="form-outer">
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
				<form action='<spring:url value="/save_personal_details"/>' method="post">
					<div class="page slide-page ">
						<div id="personal">
							<div class="row">
								<div class=" col-sm-12 title">Basic Info:</div>
								<div class="col-sm-12 mt-3 ">
									<hr>
									<h4 style="color:red;">${requestScope.error}</h4>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label d-flex  label ">
									Name:</label>
								<div class="col-sm-5 mt-3">
									<input type="text" name="name" value="${sessionScope.personal_details.name} " required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">
									Address</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="address" value="${sessionScope.personal_details.address}" required>
								</div>

								<label class=" col-sm-1 mt-3 col-form-label label ">Phone:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="phone" value="${sessionScope.personal_details.phone}" required>
								</div>

								<label class=" col-sm-1 mt-3 col-form-label label ">
									Email:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="email" value="${sessionScope.personal_details.email}" required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">Github:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="github" value="${sessionScope.personal_details.github}" required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">Linkedin:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="linkedin" value="${sessionScope.personal_details.linkedin}" required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">Objective:</label>
								<div class="col-sm-5 mt-3 ">
									<textarea rows="5" cols="80" name="objective" type="text" required>${sessionScope.personal_details.objective}</textarea>
								</div>
								<div class="col-sm-12 mt-5"></div>
								<div class="col-sm-12 mt-5 field">
								    <div class="col-sm-9"></div>
									<button id="next1" class="col-sm-3 next-1 next ">Next</button>


								</div>
							</div>
						</div>
				</form>
			
</body>
</html>

</body>
</html>

