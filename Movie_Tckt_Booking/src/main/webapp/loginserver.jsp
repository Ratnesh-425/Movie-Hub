<%@ page import="java.sql.*" %>
<%
String user  = request.getParameter("username");
String pass = request.getParameter("password");

String usertype = request.getParameter("usertype");

int status=1;


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
	String sql = "select * from regtable where Email='"+user+"' and Password='"+pass+"' and Usertype='"+usertype+"' and Status='"+status+"'";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	
	if(rs.next()){ 
		if(rs.getString(5).equalsIgnoreCase("student")){
			session.setAttribute("username", rs.getString(3));
			//session.setAttribute("usertype", rs.getString(5));
			session.setAttribute("name", rs.getString(2));
			response.sendRedirect("homepage.jsp");
		}else if(rs.getString(5).equalsIgnoreCase("admin")){
			session.setAttribute("username", rs.getString(3));
			/* session.setAttribute("usertype", rs.getString(5)); */
			session.setAttribute("name", rs.getString(2));
			response.sendRedirect("admin_page.jsp");
			
		} 
	}else{
		session.setAttribute("msg","wrong Credentials");
		session.setAttribute("logo","error");
		 response.sendRedirect("index.jsp");
	}
	

	
}catch(Exception ex){
	System.out.print(ex.getMessage());
}

%>