<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
 <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
      
      <link rel="stylesheet" type="text/css" href="<spring:url value='/css/placement_drive.css'/>" />
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

    
      

    
         

