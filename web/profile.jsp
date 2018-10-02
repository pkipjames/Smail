
 
<%@page import="java.net.URLDecoder"%>
<%@page import="com.mysql.jdbc.Blob"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body background="red5.jpg" width=80%>
      
          
        <%
           java.sql.ResultSet rs;
        java.sql.Connection con;
           java.sql.PreparedStatement pstm;
           String pwd,feid;
       
           feid = session.getAttribute("uid")+"";
           pwd = session.getAttribute("pwd")+"";
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select*from registeration where email=? and password=?");
            pstm.setString(1,feid);
            pstm.setString(2,pwd);
            rs = pstm.executeQuery();
              out.print("<center>");
             out.print("<h1 style=background-color:white; ><u>User-Profile</u></h1>");
         out.print("<br/><br/><br/><br/><br/>");
             
                 
                    rs.next();
             
                    int Rn = rs.getInt(6);
                  String u =rs.getString(1); String l= u.toUpperCase();
                  String g =rs.getString(3); String k = g.toUpperCase();
                 String m= rs.getString(4);  String H= m.toUpperCase();
                 String pic = rs.getString(7);
                  String country = rs.getString(8);                 
                 
               out.println("<table width=50% height=200 background=red3.jpg >");
                 out.print("<tr>");
               out.println("<td><br/><br/></td></tr><tr><td align=center><img border=3  src='"+pic+"'  style='width:30%;  ' /></td><tr></table>");  
 
            
              out.println("<table width=50% border=1 bgcolor=white>");
                  
             out.println("<tr><td>USER-NAME</td><td>"+l+"</td>");
              out.print("</tr>");
               out.print("<tr>");
             out.println("<td>GENDER</td><td>"+k+"</td>");
              out.print("</tr>");
               out.print("<tr>");
             out.println("<td>MOBILE-NO</td><td>"+H+"</td>");
              out.print("</tr>"); 
               out.print("<tr>");
             out.println("<td>E-MAIL</td><td>"+feid+"</td>");
              out.print("</tr>"); 
               out.print("<tr>");
             out.println("<td>REGISTERATION-NO</td><td>"+Rn+"</td>");
              out.print("</tr>"); 
              out.print("<tr>");
             out.println("<td>Country</td><td>"+country+"</td>");
              out.print("</tr>"); 
        out.println("</table><br/><br/>");
        out.println(" <td  align= center ><a href=uploadP.jsp><button style=width:20%; color:green; border: 9px solid orangered; border-radius:10px;  background-color:white; font-color:white; ><bold>Upload-Photo</bold></button></a></td>   <td  align=center ><a href=CP.jsp><button style=width:20%; color:green; border: 9px solid orangered; border-radius:10px;  background-color:white; font-color:white; ><bold>Change-Password</bold></button></a></td>");
        try
        {
          pstm=con.prepareStatement("Select*from contact where email=? ");
            pstm.setString(1,feid);
           rs = pstm.executeQuery();
              out.print("<center>");
             out.print("<h1 style=background-color:white; ><u>User-Contacts</u></h1>");
         out.print("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>");
             out.println("<table width=50% border=2 bgcolor=white>");
                 
                rs.next();
             
                String c1 = rs.getString(2);
                String c2  = rs.getString(3);
                 String c3 = rs.getString(4);
                 
                  out.print("<tr>");
             out.println("<td>Contact-1</td><td>"+c1+"</td>");
              out.print("</tr>"); 
               out.print("<tr>");
             out.println("<td>Contact-2</td><td>"+c2+"</td>");
              out.print("</tr>");
               out.print("<tr>");
             out.println("<td>Contact-3</td><td>"+c3+"</td>");
              out.print("</tr>"); 
               
            out.println("</table><br/><br/>");
             out.print("</center>");
            
            con.close();
                       }catch(Exception e)
                                                             {
                           out.print("<center>");
                      out.println("<table width=50% border=2 bgcolor=white>");
                      out.print("<tr>");
             out.println("<td>Contact-1</td><td>null</td>");
              out.print("</tr>"); 
               out.print("<tr>");
             out.println("<td>Contact-2</td><td>null</td>");
              out.print("</tr>");
               out.print("<tr>");
             out.println("<td>Contact-3</td><td>null</td>");
              out.print("</tr>"); 
               out.print("<tr>");
             out.println("<td>"+e+"</td><td></td>");
              out.print("</tr>"); 
            out.println("</table><br/><br/>");
             out.print("</center>");
                       }
         out.println("<a href=userhome.jsp><button>Back</button></a>");
            
  %>
        
        </body>
</html>
