<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" type="text/css" href="<spring:url value='/css/index2.css'/>" />
	<title>Sign up Page</title>
	 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="img-div"></div>
		<div class="login-div">
			<div class="login-box">
				
				<h1 class="l-txt">Sign Up</h1>
				<h4 style="color:red;">${requestScope.error}</h4>
				
				<form  class="login-form" method="post">
                   <div class="input-div">
						<i id="logo" class="fa-solid fa-user"></i>
						<input type="text" placeholder="Username" name="username">
					</div>
					<div class="input-div">	
						<i id="logo" class="fa-solid fa-key"></i>
						<input type="password" placeholder="Password" name="password">
					</div>
					<div class="input-div">	
						<i id="logo" class="fa-solid fa-key"></i>
						<input type="password" placeholder="confirm Password" name="cpassword">
					</div>
	
						<input type="submit" value="Sign Up" id="login-btn">
						
						<p class="d-flex justify-content-between mb-2 p-2">Already have an account?<a class="p-2"href="/recruitment_hub/login">Login</a></p>
					
				</form>
		</div>
		</div>
		
		
	</div>
</body>
</html>

