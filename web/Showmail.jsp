<%-- 
    Document   : Showmail
    Created on : Jul 6, 2018, 12:02:33 PM
    Author     : singla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           java.sql.Connection con;
            java.sql.PreparedStatement pstm;
            java.sql.ResultSet rs;
             int eno= Integer.parseInt(request.getParameter("eno"));
        
            try
               {
             Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select * from Emails where EmailNo=? ");
            pstm.setInt(1,eno);
            rs=pstm.executeQuery();
             
             rs.next();
             
                 String emdt =rs.getString(2);
                 String feid =rs.getString(3);
                 String sub=rs.getString(5);
                 String msg=rs.getString(6);
            
                out.print("<center>");
               out.print("<table border=4 width=100% >");
                   out.println("<tr>");
                 out.println("<td>Date</td>");
                 out.println("<td>"+emdt+"</td>");
                 out.println("</tr>");                
               out.println("<tr>");
                 out.println("<td>From</td>");
                 out.println("<td>"+feid+"</td>");
                 out.println("</tr>");
                 out.println("<tr>");
                     out.println("<td>Subject</td>");
                  out.println("<td>"+sub+"</td>");
                  out.println("</tr>");
                  out.println("<tr>");
                      out.println("<td>message</td>");
                   out.println("<td>"+msg+"</td>");
                   out.println("</tr>");
                 out.println("</table>");
                  out.print("</center>");
             out.print("<br/>");
             
                      }catch(Exception e)
                                                           {
                      out.println(e.toString());
                      }
             
out.println("<a href=compose.jsp?toeid=+feid,true><button>Reply</button></a>");
            %>
        
    </body>
</html>
