<%@page import="javax.xml.ws.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    </body>
</html>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
       
    </head>
    <body>
        <%
        try{
             
       String feid = session.getAttribute("uid")+"";
  DiskFileItemFactory fact=new DiskFileItemFactory();
 ServletFileUpload upl=new ServletFileUpload(fact);
List items = upl.parseRequest(request);
FileItem a,c ;
a=(FileItem)items.get(0);
c=(FileItem)items.get(1);
String pn ,pic ,fname ;
pn =  a.getString();
pic = c.getName();
fname = "J:\\WebApplication1\\web\\"+pic ;
File fl=new File(fname);
c.write(fl);

Connection con;
PreparedStatement pstm;
 Class.forName("com.mysql.jdbc.Driver");

             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");

             pstm =(PreparedStatement) con.prepareStatement(" Update  registeration set photo=?  where email=? and password=? ");
             pstm.setString(1,pic);
             pstm.setString(3,pn);
             pstm.setString(2,feid);
           int  rs = pstm.executeUpdate();
            
              if(rs==1)
                        {
            
           out.println("Record saved");
           out.println("<br/><br/><a href=userhome.jsp><button>Back</button></a>");
                     }
           else
                             { 
               response.sendRedirect("rahul3.jsp");
           }
                      con.close();
                      }catch(Exception e)
                                                             {
                           out.print(e);
                       }
            
            %>
        
        
    </body>
</html>
