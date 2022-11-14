<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title> <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
body{
background-image: url("image/poster.webp");
}

</style>
</head>
<body>
<div class="row">
<div class="col col-lg-4"></div>
<div class="col col-lg-4" style="background-color:lightgrey; margin-top: 150px; margin-left:40px; border-radius: 10px; opacity: 93%">
<div style="margin-top: 80px">
<div class="form-group">
<form action="loginserver.jsp" method="get">
<h3 style="margin-left: 170px; margin-top: -50px;">Login</h3><hr>
<input class="form-control" type="text" placeholder="username" name="username">
<br>
<input class="form-control" type="text" placeholder="password" name="password"><br>
 <div class="form-check">

    <input type="radio"  class="form-check-input" name="usertype" value="Admin" style="opacity: 100%"><label class="form-check-label">Admin</label>&nbsp; &nbsp;&nbsp;
    <input type="radio"  class="form-check-input" name="usertype" value="Student"><label class="form-check-label">User</label>
   </div>
   <br><button type="submit" class="btn btn-primary" >Login</button><br>
   
      <div class="form-group">
       <a href="forget_page.jsp"> Forget password &nbsp;</a>| &nbsp;<a href="RegForm.jsp">Sign Up</a>
      
       </div>
     
   </form>
   </div>

</div>
</div>
</div>

<%
  String status =(String)session.getAttribute("msg");
  String logo =(String)session.getAttribute("logo");
  
  if(status==null){
	  
  }else{
	  %>
	  <script>
	  swal({
		  title: "<%=status%>",
		  text: "You clicked the button!",
		  icon: "<%=logo%>",
		  button: "ok!",
		});
	  </script>
	  <% 
	  session.setAttribute("status", null);
	  session.setAttribute("logo", null);
  }
  
  %>

</body>
</html>