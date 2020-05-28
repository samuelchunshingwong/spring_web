<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>User registration & login with spring mvc</title>
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
<h3 align="center">${headerMessage}</h3>
<div align="center">
           
                <a href="/spring_web/login">Login</a>
                
                <a href="/spring_web/user_reg">Register</a>              
            
        </div>
        <br>
        <b>Project Reference:</b>
        
        <a href="https://www.youtube.com/watch?v=sfCQUdlOx-I">Project Reference link</a></p>
        
        <p><img src="<c:url value="/resources/images/project_structure.png"/>"></p>
        
        <p><b>Spring:</b></p>
        <p>It is a modular and complete framework that can be used for every layer of real-time application implementation. In other words, we can say that Spring framework can be used for the development of any of the layers of your application, unlike hibernating and Struts that are used only for database and front-end releases respectively.
        </p>
         <p>Spring applications can be created in following steps:</p>
         <ul>
         <li>Create the Bean Class</li>
         <li>Create an XML file</li>
         <li>Create the main class</li>
         <li>Load the jar files</li>
         <li>Run the program</li>
         </ul>
         <p>In the above-listed steps, you can create a Spring application and run it properly. In this way, we can create a Spring application and test and test and use it for our application.</p>
        <p><a href="https://dzone.com/articles/15-reasons-to-choose-hibernate-over-jdbc">jdbc vs JPA</a> like no ORM (just like simple sql) vs ORM (Object relational mapping)</p>
        <p><a href="https://www.educba.com/hibernate-vs-jpa/">Hibernate vs JPA</a></p>
        <p><a href="https://www.sitepoint.com/5-reasons-to-use-jpa-hibernate/">addtional info: jdbc vs JPA</a></p>
        <p><b>Hibernate:</b></p>
        <p>Hibernate is the provider of JPA. Hibernate = JPA</p>
        <p>JPA which is actually known as Java Persistence Application Programming Interface OR Java application programming Interface is used to manage the relational data. JPA is basically is a specification. It deals with the object or relational metadata. The language of the JPA is JPQL (Java Persistence Query Language). </p>
        <p><a href="https://www.onlinetutorialspoint.com/hibernate/hibernate-update-query-example.html">Hibernate update database</a></p>
        <p><b>Query builder: HQL, detached criteria</b></p>
        <p><a href="https://singztechmusings.wordpress.com/2011/02/04/criteria-queries-vs-hql-in-hibernate/">HQL vs criteria</a></p>
        <p><a href="https://access.redhat.com/documentation/en-us/red_hat_jboss_web_server/1.0/html/hibernate_core_reference_guide/querycriteria-detachedqueries">DetachedCriteria</a></p>
        <p><a href="https://www.tutorialspoint.com/hibernate/hibernate_query_language">HQL</a></p>
        <p><a href="https://www.theserverside.com/definition/JAR-file-Java-ARchive">What is JAR?</a></p>
        <p><a href="https://dzone.com/articles/how-spring-mvc-really-works">How does spring mvc work?</a></p>
        
        <p><a href="https://www.geeksforgeeks.org/pojo-vs-java-beans/">For more information about java class</a></p>
        
        
        </div></div>


</body></html>