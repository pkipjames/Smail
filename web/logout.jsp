<%-- 
    Document   : SignOut
    Created on : 20 Jul, 2018, 10:28:21 AM
    Author     : CHIRAG
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        String uid=session.getAttribute("uid")+"";
        Connection con;
        PreparedStatement pstm;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
             pstm=con.prepareStatement("Delete from Currentuser where ID=?");
             pstm.setString(1,uid);
             pstm.executeUpdate();
             session.invalidate();
             response.sendRedirect("login.jsp");
             
             
             }
        catch(Exception z)
                               {
            out.println(z.toString());
            
        }
        %>
    </body>
</html>
