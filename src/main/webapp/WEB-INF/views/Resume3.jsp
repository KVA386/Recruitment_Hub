<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/Resume3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="resume-main">
	<div class="left-box">
		<br><br>
		
		<div class="content-box">
		<h2>Profile Info</h2><br>
		<hr class="hr1">
		<p class="p1">${sessionScope.userdetails.personal_details.objective} </p><br>

		<h3>Language:</h3>
		<p class="p2">English</p>
		<div id="progress"></div>
		<p class="p2">Hindi</p>
		<div id="progress1"></div>

		<br><br>
		<h2>My Skills</h2>
		<hr class="hr1">
		<br>
		<div class="col-div-6"><p class="p2">HTML</p></div>
		<div class="col-div-6">
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle1"></i>
			<i class="fa fa-circle circle1"></i>
		</div>
			<div class="clearfix"></div>
		<div class="col-div-6"><p class="p2">CSS</p></div>
		<div class="col-div-6">
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle1"></i>
		</div>
			<div class="clearfix"></div>
		<div class="col-div-6"><p class="p2">JQUERY</p></div>
		<div class="col-div-6">
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle1"></i>
			<i class="fa fa-circle circle1"></i>
		</div>
			<div class="clearfix"></div>
		<div class="col-div-6"><p class="p2">JAVASCRIPT</p></div>
		<div class="col-div-6">
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle"></i>
			<i class="fa fa-circle circle1"></i>
			<i class="fa fa-circle circle1"></i>
			<i class="fa fa-circle circle1"></i>
		</div>

			<div class="clearfix"></div>
			<br>
			<h2>interests</h2>
			<hr class="hr1">
			<br>
			<div class="col-div-3 col3">
				<i class="fa fa-futbol-o in"></i>
				<span class="inp">Sports</span>
			</div>
			<div class="col-div-3 col3">
				<i class="fa fa-futbol-o in"></i>
				<span class="inp">Drive</span>
			</div>
			<div class="col-div-3 col3">
				<i class="fa fa-futbol-o in"></i>
				<span class="inp">Sports</span>
			</div>
			<div class="col-div-3 col3">
				<i class="fa fa-futbol-o in"></i>
				<span class="inp">Sports</span>
			</div>
		</div>
	</div>

	<div class="right-box">
		<h1>
			${sessionScope.userdetails.personal_details.name}<br>
			
		</h1>
		<p class="p3">UI & UX DESIGNER</p>

		<br>	
		<h2 class="heading">Education</h2>
		<hr class="hr2">
		<br>
		<div class="col-div-4">
			<p class="p5">${sessionScope.userdetails.educational_details.year1}</p>
			<span class="span1">${sessionScope.userdetails.educational_details.cgpa1}</span>
		</div>
		<div class="col-div-8">
			<p class="p5">${sessionScope.userdetails.educational_details.degree}</p>
			<span class="span1">${sessionScope.userdetails.educational_details.college1}</span>
		</div>
		<div class="clearfix"></div>
		<br>
		<div class="col-div-4">
			<p class="p5">${sessionScope.userdetails.educational_details.year2}</p>
			<span class="span1">${sessionScope.userdetails.educational_details.marks1}</span>
		</div>
		<div class="col-div-8">
			<p class="p5">${sessionScope.userdetails.educational_details.course1}</p>
			<span class="span1">${sessionScope.userdetails.educational_details.college2}</span>
		</div>
		<div class="clearfix"></div>
		<br>
		<div class="col-div-4">
			<p class="p5">${sessionScope.userdetails.educational_details.year1}</p>
			<span class="span1">${sessionScope.userdetails.educational_details.marks2}</span>
		</div>
		<div class="col-div-8">
			<p class="p5">${sessionScope.userdetails.educational_details.course2}</p>
			<span class="span1">${sessionScope.userdetails.educational_details.school}</span>
		</div>
		<div class="clearfix"></div>

		<br>	
		<h2 class="heading">Projects</h2>
		<hr class="hr2">
		<br>
		<div class="col-div-4">
			<p class="p5">${sessionScope.userdetails.project_details.title1}</p>
			
		</div>
		<div class="col-div-8">
			
			<span class="span1">${sessionScope.userdetails.project_details.description1}</span>
		</div>
		<div class="clearfix"></div>
		<br>
		<div class="col-div-4">
			<p class="p5">${sessionScope.userdetails.project_details.title2}</p>
			
		</div>
		<div class="col-div-8">
			
			<span class="span1">${sessionScope.userdetails.project_details.description2}</span>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>

</div>

</body>
</html>