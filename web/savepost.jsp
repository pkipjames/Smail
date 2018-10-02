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
String status , pic ,fn ;
status=  a.getString();
pic = c.getName();
fn = "J:\\WebApplication1\\web\\"+pic ;
File f2 = new File(fn);
c.write(f2);
int like = 0;
Connection con;
PreparedStatement pstm;
 Class.forName("com.mysql.jdbc.Driver");

             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");

             pstm =(PreparedStatement) con.prepareStatement(" insert into status(id,status,photo,likes) values(?,?,?,?) ");
             pstm.setString(1,feid);
             pstm.setString(2,status);
             pstm.setString(3,pic);
             pstm.setInt(4, like);
           int  rs = pstm.executeUpdate();
            
              if(rs==1)
                        {
            
           out.println("Status Updated");
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
