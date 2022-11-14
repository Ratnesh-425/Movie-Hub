<%@ page import="java.sql.*" %>
<%
String sname = request.getParameter("sname");
String stime = request.getParameter("stime");
String s_etime = request.getParameter("s_etime");
String stheater = request.getParameter("theater_name");
int tprice = Integer.parseInt(request.getParameter("tprice"));

int tid=0;

try{

	Class.forName("com.mysql.jdbc.Driver");
	Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
	String sql="select Theatre_ID from theatres where Theatre_Name='"+stheater+"'";
	PreparedStatement pst  = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	
	while(rs.next()){
		tid=rs.getInt(1);
		
	}
	
	
}catch(Exception ex){
	System.out.print("Exception is :"+ex.getMessage());
}



try{

	Class.forName("com.mysql.jdbc.Driver");
	Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
	String sql="insert into shows(Show_Name,Show_Time,End_Time,Theater_ID,Ticket_Price) values('"+sname+"','"+stime+"','"+s_etime+"','"+tid+"','"+tprice+"')";
	PreparedStatement pst  = con.prepareStatement(sql);
	int i=pst.executeUpdate();
	if(i>0){
	 	/*  session.setAttribute("msg", "Add succesfully");
		session.setAttribute("color","green");  */
		  response.sendRedirect("admin_page.jsp"); 
	} 
 }catch(Exception ex){
	System.out.print("Exception is :"+ex.getMessage());
}  
%>