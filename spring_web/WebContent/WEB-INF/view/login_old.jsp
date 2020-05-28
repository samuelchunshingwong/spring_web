<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
.bgimg-1 {
    
  background-image: url("http://laravel.usocieties.com/img/clean_back.jpg");
  
  height: 100%;
  
}
</style>

</head>
<body>
 <div class="bgimg-1">
   <div class="container">
<h3 align="center">${headerMessage}</h3>
<!--  
	<form:form action="/user_reg_jsp/loginSuccess" method="post" modelAttribute="userCredential">

		<table>
			<tr>
				<td>Enter Email:</td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" cssClass="error"/></td>
			</tr>
			<tr>
				<td>Enter Password:</td>
				<td><form:password path="password"/></td>
				<td><form:errors path="password" cssClass="error"/></td>
			</tr>

			<tr>
				<td><input class="btn btn-default" type="submit" value="Login">
				<a class="btn btn-default" role="button" href="/user_reg_jsp">Back</a></td>
				
			</tr>
		</table>
	</form:form>
	-->
  
        <div style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form:form action="/user_reg_jsp/loginSuccess" method="post" modelAttribute="userCredential">
                                    <div><form:errors path="email" cssClass="error"/></div>
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                                               
                                    <form:input path="email" type="text" class="form-control" placeholder="Email"/>
				
                                    </div>
                                
                                <div><form:errors path="password" cssClass="error"/></div>
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        
                                    <form:password path="password"  class="form-control" placeholder="Password"/>
				                    
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->
 
                                      <input class="btn btn-success" type="submit" value="Login">
				                      <a class="btn btn-default" role="button" href="/user_reg_jsp">Back</a>  
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div>
                                            Don't have an account! 
                                        <a href="/user_reg_jsp/user_reg">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                           </form:form> 
                           <p><a href="https://www.baeldung.com/spring-mvc-form-tutorial">Information about Spring MVC form</a></p> 



                        </div>                     
                    </div>  
        </div>
       </div>
       </div>
                  <!--          
	<form:form action="/user_reg_jsp/loginSuccess" method="post" modelAttribute="userCredential">

		<div class="container">
			
				<div class="form-group">
				
				<form:input path="email" placeholder="Email"/>
				<form:errors path="email" cssClass="error"/>
			    </div>
				
				<div class="form-group">
				 
				<form:password path="password" placeholder="Password"/>
				<form:errors path="password" cssClass="error"/>
			    </div>
			    <div class="form-group">
				<input class="btn btn-default" type="submit" value="Login">
				<a class="btn btn-default" role="button" href="/user_reg_jsp">Back</a>
				</div>
			
		</div>
	</form:form>
	-->
</body>
</html>