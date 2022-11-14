
 <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/test.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>Hello, world!</title>
    <script>
$(document).ready(function(){
	
		$.get("select_theater_server.jsp",function(data,status){
			$("#ctheater").html(data);
		
	});
		
		$.get("select_show_server.jsp",function(data,status){
			$("#cshow").html(data);
		
	});
	
	
});

</script>
  </head>
 <%
String mid = request.getParameter("id");
 String name = (String)session.getAttribute("name"); 
 String username = (String)session.getAttribute("username");

 if(username==null){
	/*  session.setAttribute("msg","pls login first");
	 session.setAttribute("logo", "error"); */
 response.sendRedirect("homepage.jsp"); 
 }else{
	 
	%>
	<body>

     <div style="width:100%">
  <div class="row">

   <div class="col col-lg-12">
  <nav class="navbar navbar-expand-lg " style="background-color: #1B1B1C">
  <a class="navbar-brand" href="#"><img src="image/m-logo (2).png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left: 310px;">
    <ul class="navbar-nav mr-auto" >
      <li class="nav-item active" style="color: white">
        <a class="nav-link" href="#" style="color: white">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="#" style="color: white">All Movie <span class="sr-only">(current)</span></a>
      </li>
    
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: white">Contact <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: white">My Booking <span class="sr-only">(current)</span></a>
      </li>
        <li class="nav-item dropdown">
        <a style="color: white" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <%="Welcome "+name%>
        </a>
         <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Change Password</a>
          <a class="dropdown-item" href="#">FeedBack</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Logout</a>
        </div>
      </li>
       <li class="nav-item" style="margin-left: 320px;">
       <a class="nav-link" href="#"><img src="image/dark_mode.png"><span class="sr-only">(current)</span></a>
      </li>
    </ul>
    
  </div>
</nav>
</div>
</div>
 </div> 
 <div style="background-color:grey; width: 100%; height: 50px; ">
 <h2 style="text-align: center;">Movie Details</h2>
 </div>
 <div class="row">
 <div class="col col-lg-2"> </div>
 <div class="col col-lg-8">
    	  <div style="margin-top: 30px; margin-bottom: 20px;">
		    	 <%@ page import="java.sql.*" %>
					 <%
						    try{
						   	Class.forName("com.mysql.jdbc.Driver");
						   	Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
						   	String sql="select * from add_movie where Movie_ID='"+mid+"' ";
						   	PreparedStatement pst  = con.prepareStatement(sql);
						   	ResultSet rs = pst.executeQuery();
						   	while(rs.next()){
						   		String cmname = rs.getString("Movie_Name");
						   	 %>
						   	
						   	<div class="card" style="width: 250px; margin-left: 20px;">
							  <img id="movie_id" class="card-img-top" src="image/<%=rs.getString("Poster") %>" style="height: 250px;"alt="Card image cap">
							  <div class="card-body">
							  <table>
							  <tr>
							    <td><h5 class="card-title"><%=rs.getString("Movie_Name") %></h5></td>
							   </tr>
							    </table>
						      </div>
						  </div>
						  </div>
						 <div style="margin-left: 300px; margin-top: -360px;position: absolute;" >
						 <form  action="book.jsp" method="get">
							  <table>
								  <tr>
									  <th>Movie Name</th>
									  <td><%=rs.getString("Movie_Name") %></td>
								  </tr>
								  <tr>
									  <th>Director</th>
									  <td><%=rs.getString("Director") %></td>
								  </tr>
								   <tr>
									  <th>Actor</th>
									  <td><%=rs.getString("Actors") %></td>
								  </tr>
								  <tr>
									  <th>Actress</th>
									  <td><%=rs.getString("Actress") %></td>
								  </tr>
								  <tr>
									  <th>Description</th>
									  <td><%=rs.getString("Description") %></td>
								  </tr>
								   <tr>
									  <th>Trailer</th>
									  <td><a href="<%=rs.getString("Description")%>">Show Trailer</a></td>
								  </tr>
								  <tr>
									  <th>Choose Date</th>
									  <td><input type="date" class="form-control"></td>
								  </tr>
								  <tr>
									  <th>Choose Theater</th>
									  <td>
									    <select id="ctheater" class="form-control">
									    
									    </select>
                                      </td>
								  </tr>
								   <tr>
									  <th>Choose Theater</th>
									  <td>
									    <select id="cshow" class="form-control">
									    
									    </select>
                                      </td>
								  </tr>
							  </table><br>
							<%--   <a href="book.jsp?mid=<%=rs.getInt("Movie_ID")%>&cmname=<%=rs.getString("Movie_Name")%>"> --%><button type="submit" class="btn btn-primary">Book Now</button>
							</form>
						  </div> </div>
						   	<%} 
						    }catch(Exception ex){
						   	System.out.print("Exception is :"+ex.getMessage());
						   }
					 %>
	   
</div>


 


<div class="row" >
	  <div class="footer" style="background-color: #4A4A4A; height: 300px; width: 100%; margin-top: 100px">
	     
	</div>
	</div>
<%-- <%
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
  
  %> --%>

  <!--   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> --> 
  </body>
	
  

 <%}

%> 
</html>
