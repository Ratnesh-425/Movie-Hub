<!doctype html>
<html lang="en">
  <head>
  
  
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script>
    
    $(document).ready(function(){
    	$.get("total_theater.jsp",function(data,status){
    		
    		 $("#ntheater").text(data); 
    	});
    	
    	$.get("total_movie.jsp",function(data,status){
   		 $("#nmovies").text(data); 
    	});
    	
   		$.get("total_customer.jsp",function(data,status){
      		 $("#ncustomers").text(data); 
   		});	
   		
      		$.get("total_booking.jsp",function(data,status){
         		 $("#nbooking").text(data); 
         });
   		
   	});
   
    
    </script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Hello, world!</title>
    
   
    <style>
    body {
	  margin: 0;
	}
	 ul {
	  list-style-type: none;
	  margin: 0;
	  padding: 0;
	  width: 20%;
	  background-color: lightgray;
	  position: absolute;
	  height: 800px;
	  overflow: auto;
	}
	
	li a {
	  display: block;
	  color: #000;
	  padding: 8px 16px;
	  text-decoration: none;
	}
	
	li a.active {
	  background-color: #04AA6D;
	  color: white;
	}
	
	
	li a:hover:not(.active) {
	  background-color: #555;
	  color: white;
	}

/* .tdspace{
  padding: 100px;
} */

.trbottom{

margin-top: 20px;
}
    </style>
  </head>
  <body>
   <div style="margin-left: 30px; margin-top: 10px;">
  <div class="row">

   <div class="col col-lg-12">
   <nav aria-label="breadcrumb" style="height: 30px;">
  <ol class="breadcrumb" style="background-color: #333545">
    <li class="breadcrumb-item"><a href="#"><img src="image/m-logo (2).png" style="margin-top: -5px;"></a></li><br>
    <li class="breadcrumb-item"><span style="margin-top: 5px; margin-left: 10px; color: white">Movie Center</span></li><br>
     <li class="breadcrumb-item"><span style="margin-top: 5px; margin-left: 10px;"><input type="text" name="search"></span></li>
  </ol>
  <% 
   String name = (String)session.getAttribute("name"); 
   String username = (String)session.getAttribute("username");

%>
<div >
<h6 style="color: white; margin-left: 1100px;margin-top: -50px;"><%=name %></h6>
<a href="index.jsp"><img src="image/logout.png" style="margin-left: 1280px; margin-top: -65px; color: white"></a>
</div>[]
</nav>
</div>
</div>
 </div> 

 <div class="row">
 
 <div class="col col-lg-12">
  
    <div style="margin-top: 55px; margin-left: 30px">
             <ul>
				  <li> <a class="active" href="#home"><span id="dashboard">Admin Dashboard</span></a></li>
				  <li><a href="#news"><span id="movie">Movie</span></a></li>
		          <li> <a href="#contact"><span id="theater">Theaters</span></a></li>
				  <li> <a href="#about"><span id="show">Shows</span></a></li>
				  <li> <a href="#about"><span id="customer">Customers</span></a></li>
				  <li> <a href="#about"><span id="dashboard">Bookings</span></a></li>
				  <li> <a href="#about"><span id="dashboard">Change Password</span></a></li>
				  <li> <a href="index.jsp"><span id="dashboard">Logout</span></a></li>
	          </ul> 
	   </div>
	       </div>
	    </div>   
	    
	    
	 <div style="background-color: lightgray; height: 800px; width: 1037px; margin-left: 312px; position: absolute;">
	   
	   <section id="dashboard_section">
	     <h3 style="margin-left: 400px; margin-top: 5px;">Admin Dashboard</h3><hr>
	       <div class="row">
	       <div class="col col-lg-1">
	       <div class="col col-lg-10">
	       
	         <div style="background-color: red; height: 100px; width: 200px; margin-top: 20px; margin-left: 60px;">
	            <h4 style="color: white; text-align: center;">Theater</h4>
	            <p id="ntheater" style="text-align: center; color: white; font-size: 20px;"></p>
	         </div>
	         
	         <div style="background-color: #F5C518; height: 100px; width: 200px; margin-top: -100px; margin-left: 280px;">
	            <h4 style="color: white; text-align: center; ">Movies</h4>
	             <p id="nmovies" style="text-align: center; color: white; font-size: 20px;"></p>
	         </div>
	         
	          <div style="background-color: #1F1F1F; height: 100px; width: 200px; margin-top: -100px; margin-left: 510px;">
	            <h4 style="color: white; text-align: center; ">Customers</h4>
	             <p id="ncustomers" style="text-align: center; color: white; font-size: 20px;"></p>
	         </div>
	         
	          <div style="background-color: #009270; height: 100px; width: 200px; margin-top: -100px; margin-left: 750px;">
	            <h4 style="color: white; text-align: center; ">Booking</h4>
	             <p id="nbooking" style="text-align: center; color: white; font-size: 20px;"></p>
	         </div>
	       </div>
	       </div>
	       </div>
	    
	   </section>
	 
	     <section id="theater_view">
				<div class="table_data" style="margin-left: 30px; position: absolute; margin-top: 80px">
				<h4>Theaters</h4><hr>
				 <table border=1 style="width:auto; background-color: white "class="table-responsive">
				 
				 <tr style="padding: 2px">
				 <th>Theater Id</th>
				 <th>Theater Name</th>
				 <th>Theater Location</th>
				 <th>Capacity</th>
				 </tr>
				 <%@ page import="java.sql.*" %>
			<% 	 
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
				String sql = "select *from theatres";
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery(); 
					while(rs.next()){	
						%>
						 <tr>
						 <td><%=rs.getInt(1)%></td>
						 <td><%=rs.getString(2)%></td>
						 <td><%=rs.getString(3) %></td>
						 <td><%=rs.getString(4)%></td>
						 </tr>
		
						<% 	
					}
				}catch(Exception ex){
					System.out.print(ex.getMessage());
				}
			%>	
		</table>		
			</div>
			</section>
			
			
			<!-- Add theater form-->
			
			
			<section id="add_theater">
         <div class="row" style="margin-left: 345px; width:800px; margin-top:70px; position: absolute;">
		<div class="col col-lg-2"></div>
		<div class="col col-lg-8">

		<form method="get" action="add_theater_server.jsp">
		  <div class="form-group">
		  <h4>Add Theater</h4><hr>
				<lablel>Theater Name</lablel>
				<input type="text" name="tname" class="form-control">
				<lablel>Theater Location</lablel>
				<input type="text" name="tlocation" class="form-control">
				<lablel>Capacity</lablel>
				<input type="text" name="capacity" class="form-control"><br>
				<button type="submit" class="btn btn-primary" style="margin-left: 180px; width: 120px">Add</button>
			</div>
		
		</form>
		</div>
		</div>
			</section>
			
			<!-- Add Movie Form -->
			<section id="movie_view">
			 <div class="row" style="">
			 <div class="col col-lg-1"></div>
			 <div class="col col-lg-10">
				 <form method="post" action="add_movie_server.jsp" enctype="multipart/form-data">
				 <h4 style="margin-left: 300px; margin-top: 20px;">Add Movie</h4><hr>
					<table style="width: 500px; margin-top: 40px">
						<tr>
						 <td>Movie Name :-</td>
						 <td></td>
						 <td></td>
						 <td ><input type="text" name="mname" class="form-control"></td>
						</tr>
						<tr class="trbottom">
						 <td>Release Date :-</td>
						 <td></td>
						 <td></td>
						 <td ><input type="date" name="rdate" class="form-control"></td>
						</tr>
						<tr >
						 <td>Director :-</td>
						 <td></td>
						 <td></td>
						 <td><input type="text" name="director" class="form-control"></td>
						</tr>
						<tr >
						 <td>Certificate :-</td>
						 <td></td>
						 <td></td>
						 <td >
						 <select class="form-control" name="certificate">
						 <option  value="">Select Certificate</option>
						 <option  value="Unrestricted Adult">Unrestricted Adult</option>
						 <option  value="Unrestricted">Unrestricted </option>
						 <option  value="Sepecial Class">Sepecial Class </option>
						 
						 </select></td>
						</tr>
						<tr >
						 <td>Actors :-</td>
						 <td></td>
						 <td></td>
						 <td ><input type="text" name="actor" class="form-control"></td>
						</tr>
						<tr >
						 <td>Actress :-</td>
						 <td></td>
						 <td></td>
						 <td ><input type="text" name="actress" class="form-control"></td>
						</tr>
						<tr >
						 <td>Trailer Link :-</td>
						 <td></td>
						 <td></td>
						 <td ><input type="text" name="tlink" class="form-control" style="height: 70px;"></td>
						</tr>
						<tr >
						 <td>Poster :-</td>
						 <td></td>
						 <td></td>
						 <td ><input type="file" name="poster" class="form-control" style="height: 50px;"></td>
						</tr>
						<tr >
						 <td>Description :-</td>
						 <td></td>
						 <td></td>
						 <td><input type="text" name="desc" style="height: 80px;" class="form-control"></td>
						</tr>
						<tr >
						 <td>Banner :-</td>
						 <td></td>
						 <td></td>
						 <td ><input type="file" name="banner" class="form-control" style="height: 50px;"></td>
						</tr>
					</table><br>
					<button type="submit" class="btn btn-primary" style="margin-left: 180px; width: 120px">Add</button>
				</form>
			 </div>
			 </div>
			</section>
			
			<!-- Add movie section -->
			
			<section id="addmovie">
			    <button id="add_movie_btn" type="button" class="btn btn-primary" style="margin-top: 20px; margin-left: 800px;">Add Movie</button>
			</section>
			
			<!-- Movies Table -->
			
			<section id="movietable_view">
			
			<%
				  String dmsg =(String)session.getAttribute("msg");
				  String dcolor =(String)session.getAttribute("color");
				  
				  if(dmsg==null && dcolor==null){
					  
				  }else{
					  %>
					  
					  <!-- alert for edit delete option -->
					  
					   <label style="margin-left: 300px; margin-top: -50px; position: absolute;">
					  <div class="alert alert-warning alert-dismissible fade show" role="alert">
						  <strong>process!</strong><h5 style="color:<%=dcolor%>"><%=dmsg%></h5>
						  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
						    <span aria-hidden="true">&times;</span>
						  </button>
						</div>
					  </label>
					  
					  <%
					  session.setAttribute("dmsg",null);
				  }
				%>
			    
			    <div class="table_data" style="margin-left: 150px; position:absolute; margin-top: 40px">
				<h4 style="margin-left: 200px">All Movies</h4><hr>
				 <table border=1 style="width:980; background-color: white" class="table-responsive">
				 
				 <tr>
				 <th>Movie Id</th>
				 <th>Movie Name</th>
				 <th>Release Date</th>
				 <th>Director</th>
				 <th>Actor</th>
				 <th>Actress</th>
				 <th>edit</th>
				 <th>Delete</th>
				 </tr>
				 
			<% 	 
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
				String sql = "select Movie_ID,Movie_Name,Release_Date,Director,Actors,Actress from add_movie";
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery(); 
					while(rs.next()){	
						%>
						 <tr>
						 <td><%=rs.getInt(1)%></td>
						 <td><%=rs.getString(2)%></td>
						 <td><%=rs.getString(3) %></td>
						 <td><%=rs.getString(4)%></td>
						 <td><%=rs.getString(5)%></td>
						 <td><%=rs.getString(6)%></td>
						 <td><a href="edit.jsp?id=<%=rs.getInt(1)%>"><span><img src="image/edit.png"></span></a>
						 <td><a href="delete.jsp?id=<%=rs.getInt(1)%>"><span><img src="image/bin.png"></span></a>
						 </tr>
		
						<% 	
					}
				}catch(Exception ex){
					System.out.print(ex.getMessage());
				}
			%>	
		</table>		
			</div>
			
			
			</section>
			
			
			<!-- Add show section -->
			
			<section id="addshow">
			    
			    <button id="add_show_btn" type="button" class="btn btn-primary" style="margin-top: 20px; margin-left: 800px;" data-toggle="modal" data-target="#myModal">Add Show</button>
			</section>
			
			<!-- Add Show Modal -->
			
			<div class="modal" id="myModal">
				  <div class="modal-dialog">
				    <div class="modal-content">
				
				      <!-- Modal Header -->
				      <div class="modal-header">
				        <h4 class="modal-title">Add Show </h4><hr>
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
				
				      <!-- Modal body -->
				      <div class="modal-body">
				        <div style="border:2px; padding:20px">
				        <form action="add_show_server.jsp" method="get">
				          <div class="form-group">
				         <table style="width:auto;">
						<tr>
						 <td>Show Name :-</td>
						 <td ><input type="text" name="sname" class="form-control"></td>
						</tr> 
						<tr class="trbottom">
						 <td>Show Time :-</td>
						 <td ><input type="time" name="stime" class="form-control"></td>
						</tr>
						<tr >
						 <td>End Time :-</td>
						 <td><input type="time" name="s_etime" class="form-control"></td>
						</tr>
						<tr>
						 <td>Select Theater :-</td>
						 <td >
						 <select class="form-control" name="theater_name">
						 
						 <%
						 try{
								
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
								String sql = "select Theatre_Name from theatres";
								PreparedStatement pst = con.prepareStatement(sql);
								ResultSet rs = pst.executeQuery();
                            while(rs.next()){
                        %>
                        
                        <option value="<%=rs.getString("Theatre_Name")%>"><%=rs.getString("Theatre_Name")%></option>

                          <%}	
							}catch(Exception ex){
								System.out.print(ex.getMessage());
							}
						 %>
						 </select></td>
						</tr>
						<tr >
						 <td>Ticket Price :-</td>
						 <td ><input type="text" name="tprice" class="form-control"></td>
						</tr>
					    </table><br>
					    <button type="submit" class="btn btn-primary" style="margin-left: 120px; width: 120px">Add</button>
				          </div>
				        </form>
				        </div>
				      </div>
				
				      <!-- Modal footer -->
				      <div class="modal-footer">
				        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				      </div>
				
				    </div>
				  </div>
		     </div>
			
			<!-- Show View -->
			
			<section id="show_view">
			
			<%
				  String smsg =(String)session.getAttribute("msg");
				  String scolor =(String)session.getAttribute("color");
				  
				  if(dmsg==null && dcolor==null){
					  
				  }else{
					  %>
					  
					  <!-- alert for edit delete option -->
					  
					   <label style="margin-left: 300px; margin-top: -50px; position: absolute;">
					  <div class="alert alert-warning alert-dismissible fade show" role="alert">
						  <strong>process!</strong><h5 style="color:<%=dcolor%>"><%=dmsg%></h5>
						  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
						    <span aria-hidden="true">&times;</span>
						  </button>
						</div>
					  </label>
					  
					  <%
					  session.setAttribute("dmsg",null);
				  }
				%>
			    
			    <div class="table_data" style="margin-left: 150px; position:absolute; margin-top: 40px">
				<h4 style="margin-left: 200px">Shows</h4><hr>
				 <table border=1 style="width:980; background-color: white" class="table-responsive">
				 
				 <tr>
				 <th>Show Id</th>
				 <th>Show Name</th>
				 <th>Show Time</th>
				 <th>End Time</th>
				 <th>Theater ID</th>
				 <th>Ticket Price</th>
				 </tr>
				 
			<% 	 
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
				String sql = "select * from shows";
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery(); 
					while(rs.next()){	
						%>
						 <tr>
						 <td><%=rs.getInt(1)%></td>
						 <td><%=rs.getString(2)%></td>
						 <td><%=rs.getString(3) %></td>
						 <td><%=rs.getString(4)%></td>
						 <td><%=rs.getString(5)%></td>
						 <td><%=rs.getString(6)%></td>
						 </tr>
		
						<% 	
					}
				}catch(Exception ex){
					System.out.print(ex.getMessage());
				}
			%>	
		</table>		
			</div>
			
			
			</section>
			
			<!-- Customer view -->
			
			 <section id="customer_view">
				<div class="table_data" style="margin-left: 200px; position: absolute; margin-top: 80px">
				<h4>Customers</h4><hr>
				 <table border=1 style="width:auto; background-color: white "class="table-responsive">
				 
				 <tr style="padding: 2px">
				 <th> Id</th>
				 <th> Name</th>
				 <th>Email</th>
				 <th>Gender</th>
				 </tr>
				 <%@ page import="java.sql.*" %>
			<% 	 
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
				String sql = "select *from regtable";
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery(); 
					while(rs.next()){	
                        int sex = rs.getInt(6);
						
						String gender;
						if(sex==1){
							gender="Male";
						}else
							gender="Female";
						
						%>
						 <tr>
						 <td><%=rs.getInt(1)%></td>
						 <td><%=rs.getString(2)%></td>
						 <td><%=rs.getString(3) %></td>
						 <td><%=gender%></td>
						 </tr>
		
						<% 	
					}
				}catch(Exception ex){
					System.out.print(ex.getMessage());
				}
			%>	
		</table>		
			</div>
			</section>
			
	  </div>

     

  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <!--  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
  <script>
  <%
  String viewname = (String)session.getAttribute("view");
  %>
   $(document).ready(function(){  	
  	 $("#dashboard_section").show();
  	 $("#theater_view").hide();
  	$("#add_theater").hide();
     $("#movie_view").hide();
     $("#movietable_view").hide();
     $("#addmovie").hide();
     $("#addshow").hide();
     $("#show_view").hide();
     $("#customer_view").hide();
  }); 
   
   $("#dashboard").click(function(){
	     $("#dashboard_section").show();
	      $("#movie_view").hide();
	      $("#add_theater").hide();
	      $("#theater_view").hide();
	      $("#movietable_view").hide();
	      $("#addmovie").hide();
	      $("#addshow").hide();
	      $("#show_view").hide();
	      $("#customer_view").hide();
	      
	    });
  
  $("#theater").click(function(){
     
      $("#movie_view").hide();
      $("#add_theater").show();
      $("#theater_view").show();
      $("#movietable_view").hide();
      $("#addmovie").hide();
      $("#addshow").hide();
      $("#show_view").hide();
      $("#dashboard_section").hide();
      $("#customer_view").hide();
    });
  
  $("#movie").click(function(){
	  $("#movietable_view").show();
      $("#movie_view").hide();
      $("#theater_view").hide();
      $("#add_theater").hide();
      $("#addmovie").show();
      $("#show_view").hide();
      $("#addshow").hide();
      $("#dashboard_section").hide();
      $("#customer_view").hide();
    });
  
  $("#add_movie_btn").click(function(){
	  $("#movietable_view").hide();
      $("#theater_view").hide();
      $("#add_theater").hide();
      $("#addmovie").hide();
      $("#movie_view").show();
      $("#show_view").hide();
      $("#addshow").hide();
      $("#dashboard_section").hide();
      $("#customer_view").hide();
    });
  
  $("#show").click(function(){
	  $("#movietable_view").hide();
      $("#theater_view").hide();
      $("#add_theater").hide();
      $("#addmovie").hide();
      $("#movie_view").hide();
      $("#show_view").show();
      $("#addshow").show();
      $("#dashboard_section").hide();
      $("#customer_view").hide();
    });

  $("#customer").click(function(){
	  $("#movietable_view").hide();
      $("#theater_view").hide();
      $("#add_theater").hide();
      $("#addmovie").hide();
      $("#movie_view").hide();
      $("#show_view").hide();
      $("#addshow").hide();
      $("#dashboard_section").hide();
      $("#customer_view").show();
    });

  
  </script> 
</html>