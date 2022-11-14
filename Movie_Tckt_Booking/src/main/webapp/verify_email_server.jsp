<%@ page import="java.sql.*"%>
<%

int otp = Integer.parseInt(request.getParameter("txtotp"));
int emailotp =(Integer)session.getAttribute("otp");

int status=1;


if(otp==emailotp){
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
		String sql="update regtable set Status='"+status+"' where OTP='"+otp+"'";
		PreparedStatement pst  = con.prepareStatement(sql);
		int i=pst.executeUpdate();
		if(i>0){
			session.setAttribute("msg", "register succesfully");
			session.setAttribute("logo","success");
			response.sendRedirect("index.jsp");
		}else{
			out.print("error");
		}
		
	}catch(Exception ex){
		System.out.print(ex.getMessage());
	}
}else{
	
	out.print("wrong otp");
} 

%>