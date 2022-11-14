
 <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="stylesheet" href="css/style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>Hello, world!</title>

  </head>
 <%
String smid = request.getParameter("mid");
 String name = (String)session.getAttribute("name"); 
 String username = (String)session.getAttribute("username");
 String mname =request.getParameter("cmname"); 
 
 String moviename  = request.getParameter("moviename");

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
          <a class="dropdown-item" href="index.jsp">Logout</a>
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
 <h2 style="text-align: center;"><%=moviename %></h2>
 </div>
 
<ul class="showcase">
      <li>
        <div class="seat"></div>
        <small>N/A</small>
      </li>

      <li>
        <div class="seat selected"></div>
        <small>Selected</small>
      </li>

      <li>
        <div class="seat occupied"></div>
        <small>Occupied</small>
      </li>
    </ul> 


    <div class="container">
      <div class="screen"></div>
      
      <div class="row">
        <div  id="1" class="seat">
        <a onclick='Seat(1)' style="font-size: 10px; position: absolute; color: white; margin-left: 5px;">1</a>
         </div>
       
        <div id="2" class="seat">
        <a onclick='Seat(2)' style="font-size: 10px; position: absolute; color: white; margin-left: 5px;">2</a>
         </div>
         
          <div id="3" class="seat">
            <a onclick='Seat(3)' style="font-size: 10px; position: absolute; color: white; margin-left: 5px;">3</a>
         </div>
        
         
         <div id="4" class="seat">
        <a onclick='Seat(4)' style="font-size: 10px; position: absolute; color: white; margin-left: 5px;">4</a>
         </div>
         
         <div id="5" class="seat">
        <a onclick='Seat(5)' style="font-size: 10px; position: absolute; color: white; margin-left: 5px;">5</a>
         </div>
         
         <div id="6" class="seat">
        <a onclick='Seat(6)' style="font-size: 10px; position: absolute; color: white; margin-left: 5px;">6</a>
         </div>
         
         <div id="7" class="seat">
        <a onclick='Seat(7)' style="font-size: 10px; position: absolute; color: white; margin-left: 5px;">7</a>
         </div>
         
         <div id="8" class="seat">
        <a onclick='Seat(8)' style="font-size: 10px; position: absolute; color: white; margin-left: 5px;">8</a>
         </div>
        
     
      </div>
      <div class="row">
         <div  id="9" class="seat">
        <a onclick='Seat(9)'  style="font-size: 10px; position: absolute; color: white; margin-left: 2px;">9</a>
         </div>
       
        <div id="10" class="seat">
        <a onclick='Seat(10)' style="font-size: 10px; position: absolute; color: white; margin-left: 2px;">10</a>
         </div>
         
         <div id="11" class="seat">
        <a onclick='Seat(11)' style="font-size: 10px; position: absolute; color: white; margin-left: 2px;">11</a>
         </div>
         
         <div id="12" class="seat">
        <a onclick='Seat(12)' style="font-size: 10px; position: absolute; color: white; margin-left: 2px;">12</a>
         </div>
         
         <div id="13" class="seat">
        <a onclick='Seat(13)' style="font-size: 10px; position: absolute; color: white; margin-left: 2px;">13</a>
         </div>
         
         <div id="14" class="seat">
        <a onclick='Seat(14)' style="font-size: 10px; position: absolute; color: white; margin-left: 2px;">14</a>
         </div>
         
         <div id="15" class="seat">
        <a onclick='Seat(15)' style="font-size: 10px; position: absolute; color: white; margin-left: 2px;">15</a>
         </div>
         
         <div id="16" class="seat">
        <a onclick='Seat(16)' style="font-size: 10px; position: absolute; color: white; margin-left: 2px;">16</a>
      </div>
</div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat "></div>
        <div class="seat "></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat "></div>
        <div class="seat "></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>

      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat "></div>
        <div class="seat "></div>
        <div class="seat "></div>
        <div class="seat"></div>
      </div>
      
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat "></div>
        <div class="seat "></div>
        <div class="seat "></div>
        <div class="seat"></div>
      </div>
      
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat "></div>
        <div class="seat "></div>
        <div class="seat "></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat "></div>
        <div class="seat "></div>
        <div class="seat "></div>
        <div class="seat"></div>
      </div>
    </div>
   <div>
   <button class="btn btn-secoundary" style="margin-left: 400px; margin-top: -250px;">Confirm</button>
   </div>

   <!--  <p class="text">
      You have selected <span id="count">0</span> seats for a price of $<span id="total">0</span>
    </p> -->
   <!--  <script src="script.js"></script> -->
 


<div class="row" >
	  <div class="footer" style="background-color: #4A4A4A; height: 300px; width: 100%; margin-top: 100px">
	     
	</div>
	</div>


    <!-- Optional JavaScript -->
    <!--  jQuery first, then Popper.js, then Bootstrap JS -->
     <!-- <script src="js/main.js"></script> -->
     <script src="js/seat.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
  </body>
	
  


</html>
