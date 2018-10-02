


<%@page import="java.sql.ResultSet"%>
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
     String i=request.getParameter("mail");
     ResultSet rs;

    try
    {                 
           Class.forName("com.mysql.jdbc.Driver");
       con =java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
       pstm =con.prepareStatement("Select * from registeration where email=?");
            pstm.setString(1,i);
    rs = pstm.executeQuery();
     if(i=="")
               {
        out.println("<font color=blue>Invalid Email</font>");
    }
       else if(rs.next())
               {
        out.println("<alert<font color=blue>User Exist</font>");
    }
    else
      {
        out.println("<font color=blue>User not exist</font>");  
  }
       }catch(Exception e)
                             {
           out.println(e.toString());
       }
        %>
    </body>
</html>
