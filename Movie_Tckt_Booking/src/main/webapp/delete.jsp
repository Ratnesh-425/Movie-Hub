<%@ page import="java.sql.*" %>


<html>
<head>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<%
String id=request.getParameter("id");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
	String sql = "delete from add_movie where Movie_ID='"+id+"'";
	PreparedStatement pst = con.prepareStatement(sql);
	int  rs = pst.executeUpdate(); 
	if(rs>0){
		 session.setAttribute("msg","Delete Succesfully");
		session.setAttribute("color","red"); 
		session.setAttribute("view", "movietable_view");
		response.sendRedirect("admin_page.jsp");
	}
	
	
	
}catch(Exception ex){
	System.out.print(ex.getMessage());
}


%>




</body>
</html>

