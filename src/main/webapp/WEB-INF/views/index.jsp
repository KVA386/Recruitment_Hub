<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" type="text/css" href="<spring:url value='/css/index.css'/>" />
	<title>Login Page</title>
</head>
<body>
	<div class="container">
		<div class="img-div"></div>
		<div class="login-div">
		    
			<div class="login-box">
				
				<h1 class="l-txt">Login</h1>
				
				<form action='<spring:url value="/login"/>' class="login-form" method="post">
				<h3 style="color:red;">${requestScope.message}</h3>
				
					<div class="input-div">
						<i id="logo" class="fa-solid fa-user"></i>
						<input type="text" placeholder="Username" name="username">
					</div>
					<div class="input-div">	
						<i id="logo" class="fa-solid fa-key"></i>
						<input type="password" placeholder="Password" name="password">
					</div>
						<a href='<spring:url value="/forget_password"/>'><p>Forgot Your Password?</p></a>
						<button id="login-btn">Login</button>
					<div class="newuser"><p>New Here?</p><a href="signup">Sign Up</a></div>
				</form>

	</div>
</body>
</html>

