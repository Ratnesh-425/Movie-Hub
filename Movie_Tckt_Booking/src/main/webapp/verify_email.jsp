<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
    body{
 /*  background-color: #FFFCDC; */
 background-image: url("image/seat.jpg");
}
    </style>
</head>
<body>
<div class="row">
<div class="col col-lg-2"></div>
<div class="col col-lg-8">
<nav aria-label="breadcrumb" style="margin-top: 20px">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page"><h2 style="margin-left: 330px">Verify Email</h2></li>
    
  </ol>
</nav>

<div style="background-color:#E9ECEF; height:400px">
<div class="row" style="margin-top: 10px;">
<div class="col col-lg-2"></div>
<div class="col col-sm-8">
       <form action="verify_email_server.jsp" method="get">  
       <div class="form-group" style="margin-top: 100px;">
       <label>Enter OTP:</label>
       <input type="text" name="txtotp" class="form-control">
       </div>
       
       <div>
       <button type="submit" class="btn btn-primary">Submit</button>
       </div>
       
       </form>
       </div>
       </div>
       </div>
      
       </div>
       
       </div>
 <!-- footer -->
<div class="row">
	  <div class="footer" style="background-color: #4A4A4A; height: 200px; width: 100%; margin-top: 10px">
	     
	</div>
	</div>
 
 
 </div>
 
 </div> 

</body>
</html>