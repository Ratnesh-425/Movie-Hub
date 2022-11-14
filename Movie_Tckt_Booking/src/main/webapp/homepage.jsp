<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>
		$(document).ready(function(){
		 $("#movie_id").click(function(){
			 $("#movie_details").show();
			 $("#home").hide();
		  });
		 </script>
    <title>Hello, world!</title>
  </head>
  <body>
   <% String name = (String)session.getAttribute("name"); 
            String username = (String)session.getAttribute("username");
          %>
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
       <a class="nav-link" href="all_movie.jsp" style="color: white">All Movie <span class="sr-only">(current)</span></a>
      </li>
    
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: white">Contact <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: white">My Booking <span class="sr-only">(current)</span></a>
      </li>
        
          <%if(name==null){
        	  %>
        	 <a href="index.jsp" style="color: white; margin-top: 8px;"> Login</a>
          <%}else{
        	  %>
          <li class="nav-item dropdown">
        <a style="color: white" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        	  <%="Welcome "+name%>  
        	  </a>
         <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Change Password</a>
          <a class="dropdown-item" href="#">FeedBack</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="index.jsp">Logout</a>
        </div>
         <% 
          }
          %>
          
        
      </li>
       <li class="nav-item" style="margin-left: 320px;">
       <a class="nav-link" href="#"><img src="image/dark_mode.png"><span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form> -->
  </div>
</nav>
</div>
</div>
 </div> 
 <!-- Courosel -->
 <section id="home"> 
    
 <div class="row">
 <div class="col col-lg-12">
 <div style="margin-top: 105.3px; ">
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
     <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner" style="height: 450px; width:100%; margin-top: -105px;;">
			   <div class="carousel-item active">
			      <img src="image/one-piece-film-red-movie_banner.jpg" class="d-block w-100" alt="..." style="height: 450px">
			      <div class="carousel-caption d-none d-md-block">
			        <!-- <h5>First slide label</h5>
			        <p>Some representative placeholder content for the first slide.</p> -->
			      </div>
			    </div>
					   <%@page import="java.sql.*" %>
					    <%
					    try{
					   	Class.forName("com.mysql.jdbc.Driver");
					   	Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
					   	String sql="select Banner,Movie_Name from add_movie order by Movie_ID desc LIMIT 4";
					   	PreparedStatement pst  = con.prepareStatement(sql);
					   	ResultSet rs = pst.executeQuery();
					   	while(rs.next()){
					   	 %>
					   	<div class="carousel-item ">
					      <img src="image/<%=rs.getString("Banner")%>" class="d-block w-100" alt="..." style="height: 450px">
					      <div class="carousel-caption d-none d-md-block">
					        <h5><%=rs.getString("Movie_Name") %></h5>
					        <p>Some representative placeholder content for the first slide.</p>
					      </div>
					    </div>
					   	<%} 
					    }catch(Exception ex){
					   	System.out.print("Exception is :"+ex.getMessage());
					   }
					    %>
			  <button hidden class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </button>
			  <button hidden class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </button>
			</div>
			</div>
			 </div>
 </div>
 </div>

<!-- show Movie -->
<div style="margin-top: 20px;">
<div class="row">
<div class="col col-lg-1"></div>
<div class="col col-lg-10">
<h3>Popular Movies</h3>
       <!-- carousel of movies -->
            	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					          <div class="row" style="width: 100%">
							  <%@ page import="java.util.*" %>
							 <%
							  String usname = (String)session.getAttribute("username");
					         
								    try{
								    	
								    	List list = new ArrayList();
								   	Class.forName("com.mysql.jdbc.Driver");
								   	Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
								   	String sql="select Movie_ID,Poster,Movie_Name from add_movie LIMIT 5";
								   	PreparedStatement pst  = con.prepareStatement(sql);
								   	ResultSet rs = pst.executeQuery();
								   	while(rs.next()){
								   	 %>
								   	<div class="card" style="width: 200px; margin-left: 20px">
									  <a href="movies_detail.jsp?id=<%=rs.getInt(1)%>&uname=<%=username%>"><img id="movie_id" class="card-img-top" src="image/<%=rs.getString("Poster") %>" style="height: 300px;"alt="Card image cap"></a>
									  <div class="card-body">
									  <table>
									  <tr>
									    <td><h5 class="card-title"><%=rs.getString("Movie_Name") %></h5></td>
									   </tr>
									   <tr>
									    <!-- <td><a href="#" class="btn btn-primary">View Details</a></td> -->
									   </tr>
									    </table>
								      </div>
								  </div>
								   	<%} 
								    }catch(Exception ex){
								   	System.out.print("Exception is :"+ex.getMessage());
								   }
							 %>
							     </div>
							   </div>
					    
					  <!--  <div class="carousel-item">
					      <div class="row">
							     <div class="col col-lg-4 col-sm-6 col-md-6 col-xs-12">
							       <div class="card" style="width: 18rem;">
									  <img class="card-img-top" src="image/cricbuzz.png" alt="Card image cap">
									  <div class="card-body">
									    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									  </div>
							        </div>
							     </div>
							     </div>
							   </div>  -->
							   </div>
					    </div>
					     <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="false"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="false"></span>
					    <span class="sr-only">Next</span>
					  </a>
					    
					  </div>
					 
				</div>
</div>

<!-- Slide section -->
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel" style="margin-top: 20px">
  <div class="carousel-inner">
    <div class="carousel-item active" style="height: 600px;">
      <img class="d-block w-100" src="image/Banner_2.jpg" alt="First slide" >
    </div>
    
  </div>
</div>


<!-- New Release -->
<div style="margin-top: 20px;">
<div class="row">
<div class="col col-lg-1"></div>
<div class="col col-lg-10">
<h3>New Release</h3>
       <!-- carousel of movies -->
            	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					          <div class="row" style="width: 100%">
							 <%
								    try{
								   	Class.forName("com.mysql.jdbc.Driver");
								   	Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
								   	String sql="select Movie_ID,Poster,Movie_Name from add_movie order by Movie_ID DESC LIMIT 5 ";
								   	PreparedStatement pst  = con.prepareStatement(sql);
								   	ResultSet rs = pst.executeQuery();
								   	while(rs.next()){
								   	 %>
								   	<div class="card" style="width: 200px; margin-left: 20px">
								<a href="movies_detail.jsp?id=<%=rs.getInt(1)%>&uname=<%=username%>"><img id="movie_id" class="card-img-top" src="image/<%=rs.getString("Poster") %>" style="height: 300px;"alt="Card image cap"></a>
									  <div class="card-body">
									  <table>
									  <tr>
									    <td><h5 class="card-title"><%=rs.getString("Movie_Name") %></h5></td>
									   </tr>
									  
									    </table>
								      </div>
								  </div>
								   	<%} 
								    }catch(Exception ex){
								   	System.out.print("Exception is :"+ex.getMessage());
								   }
							 %>
							     </div>
							   </div>
					    </div>
					   
					    </div>
					    
					  </div>
					
				</div>
</div>
</section>


<div class="row">
	  <div class="footer" style="background-color: #4A4A4A; height: 300px; width: 100%; margin-top: 20px">
	     
	</div>
	</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>

</html>