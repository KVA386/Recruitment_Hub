<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Recruitment Hub </title>
    <!-- Latest compiled and minified CSS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
   <link rel="stylesheet" type="text/css" href="<spring:url value='/css/Profile.css'/>" />
  
   
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- Jquery code for hide and show------------------------------------------------------------------------------------ -->
     <script>
     
     
$(document).ready(function(){
	


$("#personal").show();
$("#education").hide();
$("#skills").hide();
$("#Project").hide();
$("#Achievements").hide();


  $("#next1").click(function(){
    $("#personal").hide();
$("#education").show();
$("#skills").hide();
$("#Project").hide();
$("#Achievements").hide();
  });
  $("#Pre1").click(function(event){
	  event.preventDefault();
   $("#personal").show();
$("#education").hide();
$("#skills").hide();
$("#Project").hide();
$("#Achievements").hide();
  });
  
  $("#next2").click(function(){
	    $("#personal").hide();
	$("#education").hide();
	$("#skills").show();
	$("#Project").hide();
	$("#Achievements").hide();
	  });
  $("#Pre2").click(function(event){
	  event.preventDefault();
	   $("#personal").hide();
	$("#education").show();
	$("#skills").hide();
	$("#Project").hide();
	$("#Achievements").hide();
	  });
  
  $("#next3").click(function(){
	    $("#personal").hide();
	$("#education").hide();
	$("#skills").hide();
	$("#Project").show();
	$("#Achievements").hide();
	  });
  $("#Pre3").click(function(event){
	  event.preventDefault();
	   $("#personal").hide();
	$("#education").hide();
	$("#skills").show();
	$("#Project").hide();
	$("#Achievements").hide();
	  });
  $("#next4").click(function(){
	    $("#personal").hide();
	$("#education").hide();
	$("#skills").hide();
	$("#Project").hide();
	$("#Achievements").show();
	  });
  $("#Pre4").click(function(event){
	  event.preventDefault();
	   $("#personal").hide();
	$("#education").hide();
	$("#skills").hide();
	$("#Project").show();
	$("#Achievements").hide();
	  });
});
  


  
  









</script>
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
  
      <span class="logo_name">Recruitment Hub</span>
    </div>
   
      <ul class="nav-links">
        <li>
          <a href="#" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-box' ></i>
            <span class="links_name">Resume Generator</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Placement Drives</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Exam Modules</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">Application Status</span>
          </a>
        </li>
     
        <li>
          <a href="#">
            <i class='bx bx-message' ></i>
            <span class="links_name">Important Notice</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-heart' ></i>
            <span class="links_name">Result</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-cog' ></i>
            <span class="links_name">Setting</span>
          </a>
        </li>
        <li class="log_out">
          <a href="#">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      <div class="profile-details">
        <img src="images/profile.jpg" alt="">
        <span class="admin_name">Vaishnavi Konale</span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>

 <div class="container1">
         <div class="row"><div class="col-sm-12"><header>Profile</header></div></div>
         <div class="row"> <div class="progress-bar1 .bg-white">
            <div class="step col-sm-4">
               <p>
                Personal Details
               </p>
               <div class="bullet ">
                  <span>1</span>
               </div>
               <div class="check fas fa-check"></div>
            </div>
            <div class="step col-sm-4">
               <p>
                  Education
               </p>
               <div class="bullet">
                  <span>2</span>
               </div>
               <div class="check fas fa-check"></div>
            </div>
            <div class="step col-sm-4">
               <p>
                  Skills
               </p>
               <div class="bullet">
                  <span>3</span>
               </div>
               <div class="check fas fa-check"></div>
            </div>
            <div class="step col-sm-4">
               <p>
                  Projects
               </p>
               <div class="bullet">
                  <span>4</span>
               </div>
               <div class="check fas fa-check"></div>
            </div>
            <div class="step col-sm-4">
              <p>
                 Achievements
              </p>
              <div class="bullet">
                 <span>5</span>
              </div>
              <div class="check fas fa-check"></div>
           </div>
         </div>
         </div>
         <div class="form-outer">
            
            <form  method="get">
               <div class="page slide-page">
               <div id="personal">
                 <div class="row"><div class=" col-sm-12 title">Basic Info:</div>
                  <div  class="col-sm-12 mt-3 "><hr></div>
                 <label class=" col-sm-1 mt-3 col-form-label d-flex  label "> Name:</label>
                 <div  class="col-sm-5 mt-3"><input type="text" name="name"></div> 
                     <label class=" col-sm-1 mt-3 col-form-label label "> Address</label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="address"></div>
                                  
                <label class=" col-sm-1 mt-3 col-form-label label ">Phone:</label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="phone"></div>
                                  
                <label class=" col-sm-1 mt-3 col-form-label label "> Email:</label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="email"></div> 
                         <label class=" col-sm-1 mt-3 col-form-label label ">Github:</label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="github"></div>
                         <label class=" col-sm-1 mt-3 col-form-label label ">Linkedin:</label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="linkedin"></div>  
                  <label class=" col-sm-1 mt-3 col-form-label label ">Objective:</label>
                 <div  class="col-sm-5 mt-3 "><textarea rows="5" cols="80" name="objective" type="text"></textarea></div>  
                 <div class="col-sm-12 mt-5"></div>
                  <div class="col-sm-12 mt-5 field">
                     <input  type="submit" id="next1" value="Next" class="firstNext next">
                     
                  </div>
                 </div>              
                </div>
                </form>
                  <div id="education">
                 <div class="row"><div class=" col-sm-12 title mt-3">Education Information:</div>
                 <div  class="col-sm-12 mt-3 "><hr></div>
                  <div class=" col-sm-12  mt-3 text-left"> <h5>BTech/BE :</h5></div>
                 <label class=" col-sm-1 mt-3 col-form-label d-flex  label "> Degree:</label>
                 <div  class="col-sm-5 mt-3"><input type="text" name="degree"></div> 
                     <label class=" col-sm-1 mt-3 col-form-label label ">College:
                   </label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="college1"></div>
                                  
                <label class=" col-sm-1 mt-3 col-form-label label ">CGPA:</label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="cgpa"></div>
                                  
                <label class=" col-sm-1 mt-3 col-form-label label "> Year:</label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="year1"></div>
                 <div  class="col-sm-12 mt-3 "><hr></div> 
                 
                 <div class=" col-sm-12  mt-3 text-left"> <h5>12th/Diploma :</h5></div>
                         <label class=" col-sm-1 mt-3 col-form-label label ">Course:</label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="course1"></div>
                 <label class=" col-sm-1 mt-3 col-form-label label ">College:
                   </label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="college2"></div>
                  <label class=" col-sm-1 mt-3 col-form-label label ">Marks:
                   </label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="marks1"></div>
                  <label class=" col-sm-1 mt-3 col-form-label label ">Year:
                   </label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="year2"></div>
                   <div  class="col-sm-12 mt-3 "><hr></div>
                   
                   <div class=" col-sm-12  mt-3 text-left"> <h5>10th :</h5></div>
                  <label class=" col-sm-1 mt-3 col-form-label label ">Course:
                   </label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="course2"></div>
                 
                  <label class=" col-sm-1 mt-3 col-form-label label ">School:
                   </label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="school"></div>
                  <label class=" col-sm-1 mt-3 col-form-label label ">Marks:
                   </label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="marks2"></div>
                  <label class=" col-sm-1 mt-3 col-form-label label ">Year:
                   </label>
                 <div  class="col-sm-5 mt-3 "><input type="text" name="year3"></div>
                <div class="col-sm-12 mt-5"></div>
                  <div class="col-sm-12 mt-5 field">
                   <button id="Pre1" class=" col-sm-3 prev-1 next">Previous</button>
                   <div class="col-sm-6 mt-5"></div>
                     <button id="next2" class="col-sm-3 next-1 next">Next</button>
                     
                  </div>
                 </div>              
                </div>
             <div id="skills">
                 <div class="row"><div class=" col-sm-12 title mt-3">Skills:</div>
                 <div  class="col-sm-12 mt-3 "><hr></div>
              <label class=" col-sm-12 mt-3 col-form-label label text-left">Programming Languages:
                   </label>
                 <div  class="col-sm-10 mt-3 "><input type="text" name="prg"></div>
                 <label class=" col-sm-12 mt-3 col-form-label label text-left">Web Technologies:
                   </label>
                 <div  class="col-sm-10 mt-3 "><input type="text" name="wt"></div>
                 <label class=" col-sm-12 mt-3 col-form-label label text-left">IT Constructs:
                   </label>
                 <div  class="col-sm-10 mt-3 "><input type="text" name="it"></div>
                 <label class=" col-sm-12 mt-3 col-form-label label text-left">Soft Skills:
                   </label>
                 <div  class="col-sm-10 mt-3 "><input type="text" name="ss"></div>
                  <div class="col-sm-12 mt-5 field">
                   <button id="Pre2" class=" col-sm-3 prev-2 next mt-3">Previous</button>
                   <div class="col-sm-6 mt-5"></div>
                     <button id="next3" class="col-sm-3  next-2 next mt-3">Next</button>
                     
                  </div>
                 </div>              
                </div>
                
              <div id="Project">
                 <div class="row"><div class=" col col-lg-12 title mt-3">Projects:</div>
                 <div  class="col col-lg-12 mt-3 "><hr></div>
                 <div  class="col col-lg-12 mt-3 "> <label class=" col col-lg-12 mt-6 col-form-label label text-left">Title:
                   </label><input type="text" style="height:40px"></div>
                   <div  class="col col-lg-12 mt-3 "> <label class=" col col-lg-12 mt-3 col-form-label label text-left">Description:
                   </label><input type="text"  style="height:40px"></div>
                     <div  class="col-sm-12 mt-3 "><hr></div>
                   
                   
                    <div class="col col-lg-12" id="space"></div>
                 <div class="col-sm-12 mt-7 field">
                   <button id="add" >add</button></div>
                  <div class="col-sm-12 mt-5 field">
                   <button id="Pre3" class=" col-sm-3 prev-3 next mt-3">Previous</button>
                   <div class="col-sm-6 mt-5"></div>
                     <button id="next4" class="col-sm-3  next-3 next mt-3">Next</button>
                     
                  </div>
                 </div>              
                </div>
                  
              <div id="Achievements">
                 <div class="row"><div class=" col-sm-12 title mt-3">Acheivements:</div>
                 <div  class="col-sm-12 mt-3 "><hr></div>
             
                 <label class=" col-sm-12 mt-3 col-form-label label text-left">Description:
                   </label>
                 <div  class="col-sm-10 mt-3 "><textarea rows="5" cols="80" name="message"></textarea></div>
                 
                  <div class="col-sm-12 mt-5 field">
                   <button id="Pre4" class=" col-sm-3  next mt-3">Previous</button>
                   
                      <div class="col-sm-6 mt-5"></div>
                     <button class="col-sm-3  next mt-3">Submit</button>
                     
                  </div>
                 
                 </div>              
                </div>
                
                  
                
                </div>
            </form>
         </div>
      </div>
      <script src="<spring:url value='/js/Profile.js'/>"></script>
  </section>
  <script>
  var codeblock= '<div  class="col col-lg-12 mt-3 "> <label class=" col col-lg-12 mt-6 col-form-label label text-left">Title: </label><input type="text" style="height:40px "></div>'+
      '<div  class="col col-lg-12 mt-3 "> <label class=" col col-lg-12 mt-3 col-form-label label text-left">Description:</label><input type="text"  style="height:40px "></div>';  
 
  

  $(document).ready(function(){

	  
	  
		$("#add").click(function(event){
			  event.preventDefault();
			  $("#space").append(codeblock); });
  });
  
  
  </script>
  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>

</body>
</html>

         