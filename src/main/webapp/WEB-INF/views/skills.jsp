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
				<div class="bullet bg-danger">
					<span>2</span>
				</div>
				<div class="check fas fa-check"></div>
			</div>
			<div class="step col-sm-4">
				<p>Skills</p>
				<div class="bullet bg-primary">
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

		<form action='<spring:url value="/save_skills"/>' method="post">
			<div class="page slide-page">
				<div id="skills">
					<div class="row">
						<div class=" col-sm-12 title mt-3">Skills:</div>
						<div class="col-sm-12 mt-3 ">
						${requestScope.message}
							<hr>
						</div>
						<label class=" col-sm-12 mt-3 col-form-label label text-left">Programming
							Languages: </label>
						<div class="col-sm-10 mt-3 ">
							<input type="text" name="prg" value="${sessionScope.skill_details.prg}" required>
						</div>
						<label class=" col-sm-12 mt-3 col-form-label label text-left">Web
							Technologies: </label>
						<div class="col-sm-10 mt-3 ">
							<input type="text" name="wt" value="${sessionScope.skill_details.wt}"  required>
						</div>
						<label class=" col-sm-12 mt-3 col-form-label label text-left">IT
							Constructs: </label>
						<div class="col-sm-10 mt-3 ">
							<input type="text" name="it" value="${sessionScope.skill_details.it}"  required>
						</div>
						<label class=" col-sm-12 mt-3 col-form-label label text-left">Soft
							Skills: </label>
						<div class="col-sm-10 mt-3 ">
							<input type="text" name="ss" value="${sessionScope.skill_details.ss}"  required>
						</div>
						<div class="col-sm-12 mt-5 field">
							<a href='<spring:url value="/educational_details"/>' class=" col-sm-3 mt-3 btn btn-danger">Previous</a>
							<div class="col-sm-6 mt-5"></div>
							<button class="col-sm-3  next-2 next mt-3">Next</button></div>
		</form>
	</div>
</div>
</div>
</div>
</div>
<script src="<spring:url value='/js/Profile.js'/>"></script>
</section>

</body>
</html>

