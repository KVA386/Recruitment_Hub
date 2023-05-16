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
<title>Recruitment Hub</title>
<!-- Latest compiled and minified CSS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	 <link rel="stylesheet" type="text/css" href="<spring:url value='/css/showdrive.css'/>" />

<!-- jQuery library -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="<spring:url value='/css/Profile.css'/>" />
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


<!-- Boxicons CDN Link -->
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	 <link rel="stylesheet" type="text/css" href="<spring:url value='/css/ResumeGenerator.css'/>" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Jquery code for hide and show------------------------------------------------------------------------------------ -->

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

		
	

		
		
		
		
		
		
		
		
		
		