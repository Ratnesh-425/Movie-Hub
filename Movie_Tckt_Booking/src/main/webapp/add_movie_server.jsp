<%@page import="javax.mail.FetchProfile.Item"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%

String mname =null;
String rdate =null;
String director =null;
String certi =null;
String actor = null;
String actress = null;
String tlink = null;
String poster = null;
String desc = null;
String banner = null;

	String path = "F://J2EE-Workspace//Movie_Tckt_Booking//src//main//webapp//image"; 
	if (ServletFileUpload.isMultipartContent(request)) 
	{
			try
			{

				String fsize = null;
				String ftype = null;
                String fpath = null;
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						if(item.getFieldName().equalsIgnoreCase("poster")){
							poster = new File(item.getName()).getName();
						}
						if(item.getFieldName().equalsIgnoreCase("banner")){
							banner = new File(item.getName()).getName();
						}
					
						
						fsize = new Long(item.getSize()).toString();
						ftype = item.getContentType();
						item.write(new File(path + File.separator+poster));
						item.write(new File(path + File.separator+banner));
						
					                          
					}
					
 
					
					
                }     
                
                
                
                for (FileItem item : multiparts) {
					if(item.getFieldName().equalsIgnoreCase("mname")){
						mname = item.getString();
					}
					if(item.getFieldName().equalsIgnoreCase("rdate")){
						rdate = item.getString();
					}
					if(item.getFieldName().equalsIgnoreCase("director")){
						director = item.getString();
					}
					if(item.getFieldName().equalsIgnoreCase("certificate")){
						certi = item.getString();
					}
					if(item.getFieldName().equalsIgnoreCase("actor")){
						actor = item.getString();
					}
					if(item.getFieldName().equalsIgnoreCase("actress")){
						actress = item.getString();
					}
					if(item.getFieldName().equalsIgnoreCase("tlink")){
						tlink = item.getString();
					}
					if(item.getFieldName().equalsIgnoreCase("desc")){
						desc = item.getString();
					}
					
				
				} 
                
			}catch(Exception ex)
			{
				out.println(" "+ex.getMessage());
			}
	}
	
	 try{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","");
		String sql = "insert into add_movie(Movie_Name,Release_Date,Director,Certificate,Actors,Actress,Trailer_Link,Poster,Description,Banner)values('"+mname+"','"+rdate+"','"+director+"','"+certi+"','"+actor+"','"+actress+"','"+tlink+"','"+poster+"','"+desc+"','"+banner+"')";
		PreparedStatement pst = con.prepareStatement(sql);
		
		int i=pst.executeUpdate();
		
		if(i>0){
			session.setAttribute("msg","Register Succesfully");
			session.setAttribute("logo","success");
			response.sendRedirect("admin_page.jsp");		
			}
		
		
	}catch(Exception ex){
		System.out.print(ex.getMessage());
	}
 
%>