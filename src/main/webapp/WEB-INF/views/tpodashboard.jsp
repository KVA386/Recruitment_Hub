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
   <link rel="stylesheet" type="text/css" href="<spring:url value='/css/tpodashboard.css'/>" />
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
  <i class="fa-solid fa-users"></i>
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
          <a href='<spring:url value="/create_drive"/>'> 
            <i class='bx bx-box' ></i>
            <span class="links_name">Create Drive</span>
          </a>
        </li>
        
        <li>
          <a href='<spring:url value="/showapplied"/>'>
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Applied Students</span>
          </a>
        </li>
        
        <li>
          <a href="#">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Selected Students</span>
          </a>
        </li>
        
        <li>
          <a href="#">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">Application Status</span>
          </a>
        </li>
     
        <li>
          <a href='<spring:url value="/notice"/>'> 
            <i class='bx bx-message' ></i>
            <span class="links_name">Important Notice</span>
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
                <a  href='<spring:url value="/student_list"/>'  id="view">View</a>
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
               <a  href='<spring:url value="/placement_drive"/>' id="view">View</a>
            </div>
          </div>
         
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Selected Students</div>
            <div class="number">76</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday </span>
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
  </section>

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
