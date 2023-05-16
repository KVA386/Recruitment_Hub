<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("userdetails") == null) || (session.getAttribute("userdetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%} else{%>



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
   <link rel="stylesheet" type="text/css" href="<spring:url value='/css/home_page.css'/>" />
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
     <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
     
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
        
             <a onclick="myFunction44()" class="dropdown-btn1">
             <i class='bx bx-grid-alt' ></i>
        <span class="links_name">Resume Generator<i class='fas fa-caret-down'></i></span>
      </a>
      
      </li>
      <li id="dropdown-container2"><a href='<spring:url value="/Resume"/>'><span class="links_name">Default Resume</span></a></li>
        <li id="dropdown-container1"> <a href='<spring:url value="/ResumeGenerator"/>' ><span class="links_name">Other Templates</span></a></li>
      
        
        

         
        <li>
          <a href='<spring:url value="/showdrive"/>'> 
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Placement Drives</span>
          </a>
        </li>
        
        <li>
         <a href='<spring:url value="/showapplieddrive"/>'> 
            <i class='bx bx-message' ></i>
            <span class="links_name">Applied Drive</span>
          </a>
        </li>
       
        
        
        <li>
          <a href="#">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Exam Modules</span>
          </a>
        </li>
        <li>
         <a href='<spring:url value="/selectionstatus"/>'> 
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">Selection Status</span>
          </a>
        </li>
     
        <li>
          <a href="#">
            <i class='bx bx-cog' ></i>
            <span class="links_name">Setting</span>
          </a>
        </li>
        <li class="log_out">
          <a href='<spring:url value="/logout"/>'>
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
      
       <div id="pd1" class="profile-details">
       <i class='fas fa-user-alt' style='font-size:20px'></i>
        <span class="admin_name">${sessionScope.userdetails.username }</span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    
    
      <div>
    <div class="dropdown">
  <a onclick="myFunction()" ><i class="material-icons" id="dropbtn">&#xe003;</i>
  <span class="badge">${sessionScope.ncount1}</span></a>
  <div id="myDropdown" class="dropdown-content">
    <c:forEach var="e" items="${sessionScope.tpodriveList}">
		  <a href='<spring:url value="/showdrive"/>'>New Drive posted: ${e.cname }</a>
		</c:forEach>
  </div>
</div>
						
	</nav>	
			
		
		
		
   
      
    </nav>

    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Students</div>
            <div class="number">${sessionScope.ncount}</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
          </div>
          </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Ongoing Drives</div>
            <div class="number">${sessionScope.ncount1}</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
          </div>
           </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Selected Students</div>
            <div class="number">76</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
          </div>
          
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Not selected Student</div>
            <div class="number">11</div>
            <div class="indicator">
              <i class='bx bx-down-arrow-alt down'></i>
              <span class="text">Down From Today</span>
            </div>
          </div>
          </div>
  
      </div>

    </div>
           <div class="overview-boxes1">  
       <div class="box1">
       
          <div class="right-side">
       
            <div class="box-topic1"> <img src='<spring:url value="./img/user.png"></spring:url>' alt="image" height="110px" width="110px"></div> 
            
            <div class="Name">${sessionScope.userdetails.username }</div>
            <a href='<spring:url value="/Profile"/>'>Edit Profile</a>
            </div>
          </div>
         </div>  
         
         
         
         <!-- Notice Button -->
         
         
         
         
         <button id="next3" class="col-sm-3 next-1 next " onclick="myFunction11()"><i class="fa-solid fa-circle-exclamation" style='font-size:30px'></i></button> 
          <div id="overview-boxes2"> 
          	<br>
           <h4><center>Important Notice</center></h4><br><br>
           <c:forEach var="n" items="${sessionScope.NoticeList}">
		  <p> ${n.notice}</p>
		
		<br>
            </c:forEach>
            </div>
           
         
  </section>
  
  
  
  <script>
function myFunction11() {
  var x1 = document.getElementById("overview-boxes2");
  if (x1.style.display === "none") {
    x1.style.display = "block";
  } else {
    x1.style.display = "none";
  }
}
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
 
 <script>
 function myFunction44() {
 var x = document.getElementById("dropdown-container1");
 if (x.style.display === "none") {
   x.style.display = "block";
 } else {
   x.style.display = "none";
 }
 var y = document.getElementById("dropdown-container2");
 if (y.style.display === "none") {
   y.style.display = "block";
 } else {
   y.style.display = "none";
 }

}
 </script>

 <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('#dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
<script>
function myFunction11() {
  var x1 = document.getElementById("overview-boxes2");
  if (x1.style.display === "none") {
    x1.style.display = "block";
  } else {
    x1.style.display = "none";
  }
}
</script>
</body>
</html>

</body>
</html>
<%}%>