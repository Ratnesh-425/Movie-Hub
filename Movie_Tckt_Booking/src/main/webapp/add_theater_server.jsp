<%@ page import="java.sql.*" %>
<%
String tname = request.getParameter("tname");
String tlocation = request.getParameter("tlocation");
String capacity = request.getParameter("capacity");

try{

	Class.forName("com.mysql.jdbc.Driver");
	Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
	String sql="insert into theatres(Theatre_Name,Theatre_Location,Capacity) values('"+tname+"','"+tlocation+"','"+capacity+"')";
	PreparedStatement pst  = con.prepareStatement(sql);
	int i=pst.executeUpdate();
	if(i>0){
	/* 	session.setAttribute("msg", "Add succesfully");
		session.setAttribute("color","green"); */
		 response.sendRedirect("admin_page.jsp"); 
	}
}catch(Exception ex){
	System.out.print("Exception is :"+ex.getMessage());
}
%>