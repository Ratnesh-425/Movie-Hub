<%@ page import="java.sql.*"%>

<%


%>

<%
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
	String sql = "select COUNT(*)  from theatres";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	rs.next();
		
		%>
	<%=(rs.getInt(1))%>
	
<%
	
}catch(Exception ex){
	System.out.print(ex.getMessage());
}

%>