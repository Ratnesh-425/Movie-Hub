<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
 /*  background-color: #FFFCDC; */
 background-image: url("image/seat.jpg");
}
</style>
</head>
<body >
<div class="row">
<div class="col col-lg-2"></div>
<div class="col col-lg-8">
<nav aria-label="breadcrumb" style="margin-top: 20px; opacity: 95%">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page"><h2 style="margin-left: 330px">Sign Up</h2><a href="index.jsp" style="margin-top: -20px; position: absolute; margin-left: 800px; color: red">Login</a></li>
    
  </ol>
</nav>
<div style="background-color:#E9ECEF; opacity: 95%">
<div class="row" style="margin-top: 10px;">
<div class="col col-lg-2"></div>
<div class="col col-sm-8">
<form action="regserver.jsp" method="get">
<div class="form-group" style="margin-top: 10px;">
<label>Full Name :</label>
<input type="text" class="form-control" name="name">
<label>Email :</label>
<input type="text" class="form-control" name="email">
<label>Password :</label>
<input type="text" class="form-control" name="password">

<label>Usertype :</label>
	<select class="form-control" name="usertype">
		<option value="admin" >Admin</option>
		<option value="student" >Student</option>
	</select><br>	
	
	<label>Gender :</label>
	<div class="form-check">
    <input type="radio"  class="form-check-input" name="gender" value="Male"><label class="form-check-label">Male</label>&nbsp; &nbsp;&nbsp;
    <input type="radio"  class="form-check-input" name="gender" value="Female"><label class="form-check-label">Female</label>
   </div>
   <br>
   <div style="margin-left: 200px">
   <button type="submit" class="btn btn-primary">Register</button>
   </div>
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

</body>
</html>