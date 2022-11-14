<%@ page import="java.sql.*"%>

<%


%>
<option>Select Theater</option>
<%
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
	String sql = "select Theatre_Name from theatres";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	while(rs.next()){
		%>
		
		<option><%=rs.getString(1) %></option>
	<%}

	
}catch(Exception ex){
	System.out.print(ex.getMessage());
}

%>