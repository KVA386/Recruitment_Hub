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
				<div class="bullet bg-danger">
					<span>1</span>
				</div>
				<div class="check fas fa-check"></div>
			</div>
			<div class="step col-sm-4">
				<p>Education</p>
				<div class="bullet bg-primary">
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

		<form action='<spring:url value="/save_educational_details"/>'  method="post">
			<div class="page slide-page">

				<div id="education">
					<div class="row">
						<div class=" col-sm-12 title mt-3">Education Information:</div>
						<div class="col-sm-12 mt-3 ">
						${requestScope.message}
							<hr>
						</div>
						<div class=" col-sm-12  mt-3 text-left">
							<h5>BTech/BE :</h5>
						</div>
						<label class=" col-sm-1 mt-3 col-form-label d-flex  label ">
							Degree:</label>
						<div class="col-sm-5 mt-3">
							<input type="text" name="degree" value="${sessionScope.educational_details.degree}">
						</div>
						<label class=" col-sm-1 mt-3 col-form-label label ">College:
						</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="college1" value="${sessionScope.educational_details.college1}">
						</div>

						<label class=" col-sm-1 mt-3 col-form-label label ">CGPA:</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="cgpa1" value="${sessionScope.educational_details.cgpa1}">
						</div>

						<label class=" col-sm-1 mt-3 col-form-label label "> Year:</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="year1" value="${sessionScope.educational_details.year1}">
						</div>
						<div class="col-sm-12 mt-3 ">
							<hr>
						</div>

						<div class=" col-sm-12  mt-3 text-left">
							<h5>12th/Diploma :</h5>
						</div>
						<label class=" col-sm-1 mt-3 col-form-label label ">Course:</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="course1" value="${sessionScope.educational_details.course1}">
						</div>
						<label class=" col-sm-1 mt-3 col-form-label label ">College:
						</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="college2" value="${sessionScope.educational_details.college2}">
						</div>
						<label class=" col-sm-1 mt-3 col-form-label label ">Marks:
						</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="marks1" value="${sessionScope.educational_details.marks1}">
						</div>
						<label class=" col-sm-1 mt-3 col-form-label label ">Year:
						</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="year2" value="${sessionScope.educational_details.year2}" inputmode="decimal">
						</div>
						<div class="col-sm-12 mt-3 ">
							<hr>
						</div>

						<div class=" col-sm-12  mt-3 text-left">
							<h5>10th :</h5>
						</div>
						<label class=" col-sm-1 mt-3 col-form-label label ">Course:
						</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="course2" value="${sessionScope.educational_details.course2}" required>
						</div>

						<label class=" col-sm-1 mt-3 col-form-label label ">School:
						</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="school" value="${sessionScope.educational_details.school}" required>
						</div>
						<label class=" col-sm-1 mt-3 col-form-label label ">Marks:
						</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="marks2" value="${sessionScope.educational_details.marks2}" required >
						</div>
						<label class=" col-sm-1 mt-3 col-form-label label ">Year:
						</label>
						<div class="col-sm-5 mt-3 ">
							<input type="text" name="year3" value="${sessionScope.educational_details.year3}" required>
						</div>
						<div class="col-sm-12 mt-5"></div>
						<div class="col-sm-12 mt-5 field">
						   <a href='<spring:url value="/personal_details"/>' class=" col-sm-3 btn btn-danger">Previous</a>
                   <div class="col-sm-6 mt-5"></div>
                     <button  class="col-sm-3 ">Next</button>
						
						</div>
					</div>
				</div>
		</form>

		</body>
		</html>

		</body>
		</html>