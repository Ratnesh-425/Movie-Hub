<%@ page import="java.sql.*"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Random"%>
<% 
String name = request.getParameter("name");
String email = request.getParameter("email");

String password = request.getParameter("password");
String usertype = request.getParameter("usertype");
String gender = request.getParameter("gender");


int sex;

if(gender.equalsIgnoreCase("male")){
	sex=1;
}else{
	sex=2;
}


Random rand = new Random();

int otp = rand.nextInt(999999)+10000;



Properties props = new Properties();    
 props.put("mail.smtp.host", "smtp.gmail.com");    
props.put("mail.smtp.socketFactory.port", "465");    
props.put("mail.smtp.socketFactory.class",    
          "javax.net.ssl.SSLSocketFactory");    
props.put("mail.smtp.auth", "true");    
props.put("mail.smtp.port", "465");     
 
Session session1 = Session.getInstance(props,    
 new javax.mail.Authenticator() {    
 protected PasswordAuthentication getPasswordAuthentication() {    
 return new PasswordAuthentication("ratneshsingh425@gmail.com","yihatmfncmqojxkc");  
 }    
});    
//compose message    
try {    
 MimeMessage message = new MimeMessage(session1);    
 message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));    
  message.setSubject("OTP");     
 message.setText("OTP "+otp);    
 //send message  
 Transport.send(message);    
// System.out.println("message sent successfully");
 
} catch (MessagingException e) {throw new RuntimeException(e);}   



try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
	String sql = "insert into regtable(Name,Email,Password,Usertype,Gender,OTP)values('"+name+"','"+email+"','"+password+"','"+usertype+"','"+sex+"','"+otp+"')";
	PreparedStatement pst = con.prepareStatement(sql);
	
	int i=pst.executeUpdate();
	
	if(i>0){
		//session.setAttribute("msg","Register Succesfully");
		//session.setAttribute("logo","success");
		//response.sendRedirect("index.jsp");
		session.setAttribute("otp", otp);
		response.sendRedirect("verify_email.jsp");	
		
		}
	
	
}catch(Exception ex){
	System.out.print(ex.getMessage());
}

%>