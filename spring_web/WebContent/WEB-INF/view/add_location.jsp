<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration page</title>
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
                        <div class="panel-title">Add location</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form:form action="/spring_web/add_loc_success_jsp_form" method="post" modelAttribute="map">
                                    
                                     <div><form:errors path="loc_name" cssClass="error"/></div>
                            <div style="margin-bottom: 25px" class="input-group">     
                             <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>                                      
                                    <form:input path="loc_name" id="loc_name" type="text" class="form-control" placeholder="Location Name"/>
                                    </div>
                                    
                                     <div><form:errors path="loc_info" cssClass="error"/></div>
                            <div style="margin-bottom: 25px" class="input-group">
                                   <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                    <form:input path="loc_info" id="loc_info" type="text" class="form-control" placeholder="Location Info"/>
				                    
                                    </div>
                                    
                                    <div><form:errors path="lat" cssClass="error"/></div>
                            <div style="margin-bottom: 25px" class="input-group">  
                             <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>                                         
                                    <form:input path="lat" id="loc_lat" type="text" class="form-control" placeholder="Lat"/>
                                    </div>
                                
                                <div><form:errors path="lng" cssClass="error"/></div>
                            <div style="margin-bottom: 25px" class="input-group">
                                   <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                                    <form:input path="lng" id="loc_lng" type="text" class="form-control" placeholder="Lng"/>
				                    
                                    </div>
                                   

                                
                            


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                   
                                      
                                      <input class="btn btn-success" type="submit" value="Submit">
                                      <button class="btn btn-info" type="button" id="check_np"  >Check lat lng</button> 
				                      <a class="btn btn-default" role="button" href="/spring_web">Back</a>

                                   
                                </div>


                                  
                           </form:form>  
                          <p><a href="https://www.baeldung.com/spring-mvc-form-tutorial">Information about Spring MVC form</a></p>


                        </div>                     
                    </div>  
        </div>
	</div>
	</div>
<script type="text/javascript">
document.getElementById("check_np").onclick = function() {
	var loc_name = $('#loc_name').val();
	
    var loc_new = loc_name.split(' ').join('+');
    //alert(loc_new);
$.get("https://maps.googleapis.com/maps/api/geocode/json?address="+loc_new+"+hong+kong&key=AIzaSyCXYcuqtMiI25WK3agjWnw5Gd7Gv3hm8eg", function(data, status){
    
	   
	   //alert(data.results[0].geometry.location.lat);

	 //document.getElementById("show_np").innerHTML = "Current price: "+data.np;//+ ". Checked at "+date+" "+time
	 document.getElementById("loc_lat").value = data.results[0].geometry.location.lat;
	 document.getElementById("loc_lng").value = data.results[0].geometry.location.lng;  
	   
	  },"json");
};
</script>

</body>
</html>