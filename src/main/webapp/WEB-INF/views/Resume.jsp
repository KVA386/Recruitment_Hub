<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("userdetails") == null) || (session.getAttribute("userdetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="<spring:url value='/css/Resume.css'/>" />

</head>
<body>

<div class="resume-box">
	
	<div class="left-section">
		<div class="profile">
	
		<div class="blue-box"></div>
		</div>
		<h2 class="name">${sessionScope.userdetails.personal_details.name}</h2>
		<p class="n-p">Student</p>


		<div class="info">
			<p class="heading">Information</p>
			<p class="p1"><span class="span1"><img src="image/location.png"></span>Address<span> <br>${sessionScope.userdetails.personal_details.address}</span></p>
			<p class="p1"><span class="span1"><img src="image/call.png"></span>Phone<span> <br>${sessionScope.userdetails.personal_details.phone}</span></p>
			<p class="p1"><span class="span1"><img src="image/mail.png"></span>Email<span> <br>${sessionScope.userdetails.personal_details.email}</span></p>
			<p class="p1"><span class="span1"><img src="image/domain.png"></span>Linkdin<span> <br>${sessionScope.userdetails.personal_details.linkedin}</span></p>
			<p class="p1"><span class="span1"><img src="image/domain.png"></span>Github<span> <br>${sessionScope.userdetails.personal_details.github}</span></p>
		</div>

		

	</div>

	<div class="right-section">
		<div class="right-heading">
			<img src="image/user.png">
			<p class="p2">Objective</p>
		</div>
		<p class="p3">${sessionScope.userdetails.personal_details.objective}</p>

		<div class="clearfix"></div>
		<br><br>
		<div class="right-heading">
			<img src="image/pencil.png">
			<p class="p2">Education</p>
		</div>
		<div class="clearfix"></div>
		<div class="lr-box">
		<div class="left">
			<p class="p4">${sessionScope.userdetails.educational_details.year1}</p>
			
		</div>

		<div class="right">
			<p class="p5">${sessionScope.userdetails.educational_details.degree}</p>
			<p class="p5">${sessionScope.userdetails.educational_details.college1}</p>
			<p class="p5">Cgpa: ${sessionScope.userdetails.educational_details.cgpa1}</p>
		</div>
		<div class="clearfix"></div>
		</div>

		<div class="lr-box">
		<div class="left">
			<p class="p4">${sessionScope.userdetails.educational_details.year2}</p>
			
		</div>

		<div class="right">
			<p class="p5">${sessionScope.userdetails.educational_details.course1}</p>
			<p class="p5">${sessionScope.userdetails.educational_details.college2}</p>
			<p class="p5">Percentage: ${sessionScope.userdetails.educational_details.marks1}%</p>
		</div>
		<div class="clearfix"></div>
		</div>

		<div class="lr-box">
		<div class="left">
			<p class="p4">${sessionScope.userdetails.educational_details.year3}</p>
		</div>

		<div class="right">
			<p class="p5">${sessionScope.userdetails.educational_details.course2}</p>
			<p class="p5">${sessionScope.userdetails.educational_details.school}</p>
			<p class="p5">Percentage: ${sessionScope.userdetails.educational_details.marks2}%</p>
		</div>
		<div class="clearfix"></div>
		</div>


		<br>
		<div class="right-heading">
			<img src="image/edu.png">
			<p class="p2">Skills</p>
		</div>
		<div class="clearfix"></div>
		<div class="lr-box">
		<div class="left">
			
			<p class="p4"> Programming</p>
		</div>

		<div class="right">
			<p class="p5">${sessionScope.userdetails.skill_details.prg}</p>
		</div>
		<div class="clearfix"></div>
		</div>

		<div class="lr-box">
		<div class="left">
			
			<p class="p4">Web Programming</p>
		</div>

		<div class="right">
			<p class="p5">${sessionScope.userdetails.skill_details.wt}</p>
		</div>
		<div class="clearfix"></div>
		</div>
		<div class="lr-box">
		<div class="left">
			
			<p class="p4">It Constructs</p>
		</div>
		<div class="right">
			<p class="p5">${sessionScope.userdetails.skill_details.it}</p>
		</div>
		<div class="clearfix"></div>
		</div>
		<div class="lr-box">
		<div class="left">
			
			<p class="p4">Soft skills</p>
		</div>
		<div class="right">
			<p class="p5">${sessionScope.userdetails.skill_details.ss}</p>
		</div>
		<div class="clearfix"></div>
		</div>
		<br>
		<div class="right-heading">
			<img src="image/edu.png">
			<p class="p2">Project</p>
		</div>
		<div class="clearfix"></div>
		<div class="s-box">
			<p class="p6">${sessionScope.userdetails.project_details.title1}</p>
			<p class="p6">${sessionScope.userdetails.project_details.description1}</p>
			
			
		</div>
		<div class="s-box">
			<p class="p6">${sessionScope.userdetails.project_details.title2}</p>
			<p class="p6">${sessionScope.userdetails.project_details.description2}</p>
			
		</div>


		<div class="clearfix"></div>
		<br><br>
		<div class="right-heading">
			<img src="image/hobbies.png">
			<p class="p2">Achivements</p>
		</div>
		<div class="clearfix"></div>
		<p class="p6">${sessionScope.userdetails.achivements_details.message}</p>

	</div>

		<div class="clearfix"></div>
	
	

</div>



</body>
</html>
<%}%>