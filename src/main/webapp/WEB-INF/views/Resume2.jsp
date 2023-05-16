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
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<spring:url value='/css/Resume2.css'/>" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <title>Resume</title>
</head>

<body>
    <section class="main-section">
        <div class="left-part">
 
            <div class="contact-container">
                <h2 class="title">Contact Me</h2>
                <div class="contact-list">
                    <div class="icon-container">
                        <i class="bi bi-geo-alt-fill"></i>
                    </div>
                    <div class="contact-text">
                        <p>${sessionScope.userdetails.personal_details.address}</p>
                    </div>
                </div>
                <div class="contact-list">
                    <div class="icon-container">
                        <i class="bi bi-envelope-fill"></i>
                    </div>
                    <div class="contact-text">
                        <p>${sessionScope.userdetails.personal_details.email}</p>
                    </div>
                </div>
                <div class="contact-list">
                    <div class="icon-container">
                        <i class="bi bi-laptop"></i>
                    </div>
                    <div class="contact-text">
                        <p>${sessionScope.userdetails.personal_details.github}</p>
                    </div>
                </div>
                <div class="contact-list">
                    <div class="icon-container">
                        <i class="bi bi-linkedin"></i>
                    </div>
                    <div class="contact-text">
                        <p>${sessionScope.userdetails.personal_details.linkedin}</p>
                    </div>
                </div>
            </div>

            <div class="education-container">
                <h2 class="title">Education</h2>
                <div class="course">
                    <h2 class="education-title">${sessionScope.userdetails.educational_details.degree}</h2>
                    <h5 class="college-name">${sessionScope.userdetails.educational_details.college1}</h5>
                     <h5 class="college-name">Cgpa: ${sessionScope.userdetails.educational_details.cgpa1}</h5>
                    <p class="education-date">${sessionScope.userdetails.educational_details.year1}</p>
                </div>
                <div class="course">
                    <h2 class="education-title">${sessionScope.userdetails.educational_details.course1}</h2>
                    <h5 class="college-name">${sessionScope.userdetails.educational_details.college2}</h5>
                    <h5 class="college-name">Percentage: ${sessionScope.userdetails.educational_details.marks1}%</h5>
                    <p class="education-date">${sessionScope.userdetails.educational_details.year2}</p>
                </div>
                <div class="course">
                    <h2 class="education-title">${sessionScope.userdetails.educational_details.course2}</h2>
                    <h5 class="college-name">${sessionScope.userdetails.educational_details.school}</h5>
                     <h5 class="college-name">Percentage: ${sessionScope.userdetails.educational_details.marks2}%</h5>
                    <p class="education-date">${sessionScope.userdetails.educational_details.year3}</p>
                </div>
            </div>

            <div class="skills-container">
                <h2 class="title">Skills</h2>
                <div class="skill">
                    <div class="left-skill">
                        <p>${sessionScope.userdetails.skill_details.prg}</p>
                    </div>
                    
                    </div>
                </div>
                <br>
                <div class="skill">
                    <div class="left-skill">
                        <p>${sessionScope.userdetails.skill_details.wt}</p>
                    </div>
                    <div class="right-skill">
                        <div class="outer-layer">
                            <div class="inner-layer" style="width: 90%;"></div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="skill">
                    <div class="left-skill">
                        <p>${sessionScope.userdetails.skill_details.it}</p>
                    </div>
                    <div class="right-skill">
                        <div class="outer-layer">
                            <div class="inner-layer" style="width: 40%;"></div>
                        </div>
                    </div>
                </div>
                <br>
                
                <div class="skill">
                    <div class="left-skill">
                        <p>${sessionScope.userdetails.skill_details.ss}</p>
                    </div>
                    <div class="right-skill">
                        <div class="outer-layer">
                            <div class="inner-layer" style="width: 60%;"></div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="skill">
                    <div class="left-skill">
                        
                    </div>
                    <div class="right-skill">
                        <div class="outer-layer">
                            <div class="inner-layer" style="width: 70%;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="right-part">
            <div class="banner">
                <h1 class="firstname">${sessionScope.userdetails.personal_details.name}</h1><br>
              
                <p class="position">${sessionScope.userdetails.personal_details.objective}</p>
            </div>

            <div class="work-container ">
                <h2 class="title text-left">Projects</h2>
                <div class="work">
                    <div class="job-date">
                        <p class="job">${sessionScope.userdetails.project_details.title1}</p>
                 
                    </div>
                
                    <p class="work-text">${sessionScope.userdetails.project_details.description1}</p>
                </div>

                <div class="work">
                    <div class="job-date">
                        <p class="job">${sessionScope.userdetails.project_details.title2}</p>
                       
                    </div>
                    
                    <p class="work-text">${sessionScope.userdetails.project_details.description2}</p>
                </div>
            </div>

            <div class="references-container">
                <h2 class="title text-left">Achievements and Awards</h2>
              <p>${sessionScope.userdetails.achivements_details.message}</p>
	</div>
              
        </div>
    </section>

</body>

</html>

<%}%>