<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value="/resources/images/icons/favicon.ico" />"/>  
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>"/>  
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>"/>  
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>"/>  
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animate/animate.css"/>"/>  
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css-hamburgers/hamburgers.min.css"/>"/>  
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animsition/css/animsition.min.css"/>"/>  
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/select2/select2.min.css"/>"/>  
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css"/>"/>  
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css"/>"/>  
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>"/>  
<!--===============================================================================================-->
<style>
		
		img.bg {
			/* Set rules to fill background */
			min-height: 100%;
			min-width: 1024px;
			
			/* Set up proportionate scaling */
			width: 100%;
			height: auto;
			
			/* Set up positioning */
			position: fixed;
			top: 0;
			left: 0;
		}
		
		@media screen and (max-width: 1024px){
			img.bg {
				left: 50%;
				margin-left: -512px; }
		}
		
		#page-wrap { position: relative; width: 400px; margin: 50px auto; padding: 20px; background: white; -moz-box-shadow: 0 0 20px black; -webkit-box-shadow: 0 0 20px black; box-shadow: 0 0 20px black; }
		p { font: 15px/2 Georgia, Serif; margin: 0 0 30px 0; text-indent: 40px; }
	</style>
</head>
<body>
	<img src="<c:url value="/resources/images/bg.jpg" />" class="bg">

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(resources/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>

				<!--  <form class="login100-form validate-form">-->
				<form:form action="/spring_web/login"  class="login100-form validate-form" method="post" modelAttribute="userCredential">
					<div><form:errors path="email" cssClass="text-danger"/></div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
					
						<span class="label-input100">Email</span>
						<!--  <input class="input100" type="text" name="username" placeholder="Enter username">-->
						 <form:input path="email" type="text" class="input100" placeholder="Enter Email"/>
						<span class="focus-input100"></span>
					</div>
					
                   <div><form:errors path="password" cssClass="text-danger"/></div>
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
					
						<span class="label-input100">Password</span>
						<!--  <input class="input100" type="password" name="pass" placeholder="Enter password">-->
						<form:password path="password"  class="input100" placeholder="Enter Password"/>
						<span class="focus-input100"></span>
					</div>
                 
					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="#" class="txt1">
								Forgot Password?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">
							Login
						</button>
						<a class="btn btn-default" role="button" href="/spring_web">Back</a>  
					</div>
				</form:form> 
				<p><a href="https://www.baeldung.com/spring-mvc-form-tutorial">Information about Spring MVC form</a></p> 
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="/resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/resources/js/main.js"></script>

</body>
</html>