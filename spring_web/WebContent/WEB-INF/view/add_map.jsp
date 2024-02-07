<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Map</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.error{
color:red;
}
 body, html {
          
                margin: 0;
                padding: 0;
                width: 100%;
                height: 100%;
                color: #000;
                
                
                font-family: 'Lato';
            }
            
          .bgimg-1, .bgimg-2, .bgimg-3 {
  position: relative;
  
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

}
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
</style>

</head>
<body>
<img src="<c:url value="/resources/images/bg.jpg" />" class="bg">
 <div class="bgimg-1">
   <div class="container">


	 <div style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Add Map</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form:form action="/spring_web/add_map_success_jsp_form" method="post" modelAttribute="map">
                                    
                                     <div><form:errors path="name" cssClass="error"/></div>
                            <div style="margin-bottom: 25px" class="input-group">     
                             <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>                                      
                                    <form:input path="name" id="name" type="text" class="form-control" placeholder="Map Name"/>
                                    </div>
                                    
           


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                   
                                      
                                      <input class="btn btn-success" type="submit" value="Submit">
                                      <!--<button class="btn btn-info" type="button" id="check_np"  >Check lat lng</button> -->
				                      <a class="btn btn-default" role="button" href="/spring_web">Back</a>

                                   
                                </div>


                                  
                           </form:form>  
                          <p><a href="https://www.baeldung.com/spring-mvc-form-tutorial">Information about Spring MVC form</a></p>


                        </div>                     
                    </div>  
        </div>
	</div>
	</div>


</body>
</html>