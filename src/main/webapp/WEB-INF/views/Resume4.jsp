<!Doctype HTML>
<html>
<head>
	<title>resume</title>
	<link rel="stylesheet" type="text/css" href="css/Resume4.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<div class="box-outer">
		<div class="resume-box">
			<div>
				<div class="col-sm-6">
					
					<h1 class="name">${sessionScope.userdetails.personal_details.name}</h1>
					<p class="name_p">Front end Developer</p>
				</div>
				<div class="col-sm-6">
					<div style="float: right;">
						<p class="contat_p">
							<i class="fa fa-home fontfa"></i>
							&nbsp;${sessionScope.userdetails.personal_details.address}
						</p>
						<p class="contat_p">
							<i class="fa fa-phone fontfa"></i>
							&nbsp; Phone ${sessionScope.userdetails.personal_details.phone}
						</p>
						<p class="contat_p">
							<i class="fa fa-envelope fontfa"></i>
							&nbsp; Email : ${sessionScope.userdetails.personal_details.email}
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
				<br/>
				<hr/>

				<h1 class="head">Profile</h1>
				<p class="para-2">
					${sessionScope.userdetails.personal_details.objective}
				</p>
			</div>
			<hr/>
			<br/>

			<div class="box-1">
				<div class="content">
					<h1 class="head">Education</h1>
					<br/>
					<ul>
						<li>
							<p class="para-1">${sessionScope.userdetails.educational_details.year1}<br/>${sessionScope.userdetails.educational_details.degree}</p>
							<p class="para-2">${sessionScope.userdetails.educational_details.college1}</p>
							<p class="para-2">${sessionScope.userdetails.educational_details.cgpa1}</p>
						</li>
						<li>
							<p class="para-1">${sessionScope.userdetails.educational_details.year2}<br/>${sessionScope.userdetails.educational_details.course1}</p>
							<p class="para-2">${sessionScope.userdetails.educational_details.college2}</p>
							<p class="para-2">${sessionScope.userdetails.educational_details.marks1}%</p>
						</li>
						<li>
							<p class="para-1">${sessionScope.userdetails.educational_details.year3}<br/>${sessionScope.userdetails.educational_details.course2}</p>
							<p class="para-2">${sessionScope.userdetails.educational_details.school}</p>
							<p class="para-2">${sessionScope.userdetails.educational_details.marks2}%</p>
						</li>
						
					</ul>

					<h1 class="head">Skills</h1>
					<ul>
						<li>
							<p>c</p>
							<div id="progress"></div>
						</li>
						<li>
							<p>Python</p>
							<div id="progress1"></div>
						</li>
						<li>
							<p>HTML</p>
							<div id="progress2"></div>
						</li>
						<li>
							<p>CSS</p>
							<div id="progress3"></div>
						</li>
					</ul>
				</div>
			</div>

			<div class="box-2">
				<div class="content-2">
					<h1 class="head">Projects</h1>
					<br/>
					<ul>
						<li>
						<p class="para-1">${sessionScope.userdetails.project_details.title1}</p>
							<p class="para-2">
								${sessionScope.userdetails.project_details.description1}
							</p>

						</li>
						<li>
							<p class="para-1">${sessionScope.userdetails.project_details.title2}</p>
							<p class="para-2">
								${sessionScope.userdetails.project_details.description2}
							</p>

						</li>
						
					</ul>
					<h1 class="head">Achivements</h1>
					<br/>
					<ul>
						<li>
							<p class="para-2">
							${sessionScope.userdetails.achivements_details.message}
							</p>

						</li>
						
						
					</ul>
					
				</div>
			</div>


		</div>
		<div class="clearfix"></div>
	</div>


</body>

</html>