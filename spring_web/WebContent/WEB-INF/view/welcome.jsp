<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Full Page Background Image | CSS #1</title>
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
<div id="page-wrap">
<div class="container">


        
    <div class="container">
    <h3 align="left"><a href="/spring_web/listUsers">List Users</a></h3>
<h3 align="right"><a href="/spring_web/logout">Log Out</a></h3>
	<h2 align="center">${headerMessage}</h2>
	<h3 align="center">You have registered with following Info::::</h3>
	<table align="center" border="5px">
	
			<tr>
			<td>User email:</td>
			<td>${sessionScope.user_mail}</td><!--${user.email}  -->
		</tr>
	
		<tr>
			<td>User name:</td>
			<td>${sessionScope.user_name}</td><!--${user.username}  -->
		</tr>
		
		<tr>
			<td>User age:</td>
			<td>${sessionScope.user_age}</td><!--${user.age}  -->
		</tr>
		<tr>
			<td>User password:</td>
			<td>${sessionScope.user_password}</td><!--${user.password}  -->
		</tr>

		

	</table>
	<h3 align="left"><a href="/spring_web/map">Show Map</a></h3>
	<h3 align="right"><a href="/spring_web/insert_map">Add Map Location</a></h3>
	</div>

        
        
        </div></div>


</body></html>
