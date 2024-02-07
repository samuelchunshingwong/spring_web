<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload File</title>
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
<style>
.upload_btn{
  padding: 0.2rem;
  background-color: #D3D3D3;
  border-radius: 0.2rem;
  border: 1px solid #000000;
  cursor: pointer;
  margin-top: 1rem;
}
input[id^="fileName"]{
  background: transparent;
  border: none;
  pointer-events: none;
}
input[id^="rmFile"]{
  background: transparent;
  border: none;
}
.btn{
  background: transparent;
  border: none;
}
.btn:hover{
  font-weight: bold;
}

</style>
</head>
<body>
<img src="<c:url value="/resources/images/bg.jpg" />" class="bg">
 <div class="bgimg-1">
   <div class="container">


	 <div style="margin-top:50px;" class="mainbox col-md-8 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Upload File</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <div class="row min-height">
                          <div class="small-12 column">
                            <input type="file" id="file[1]" name="file" style="display:none;"/>
                            <label class="upload_btn" id="btn1" onclick="browse(1);">Choose File</label>
                            <input type="text"  id="fileName[1]" name="fileName[1]" size="50" />&nbsp;<input type="button" id="rmFile1" name="rmFile1" value="X" class="rmFile" onclick="rmFile(1);" />
                          </div>
                        </div>
                          <p><a href="https://www.baeldung.com/spring-mvc-form-tutorial">Information about Spring MVC form</a></p>


                        </div>                     
                    </div>  
        </div>
	</div>
	</div>
<script>
function browse(index){
	//alert(index);
  document.getElementById("file["+index+"]").click();
}
</script>	

</body>
</html>