<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
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
       String eno[]=request.getParameterValues("cb");
        int i,e,n;
        try
                               { 
             Class.forName("com.mysql.jdbc.Driver");
            con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            e=eno.length;
            for(i=0; i<e; i++)
                                      { 
                n = Integer.parseInt(eno[i]);
                pstm = con.prepareStatement("delete from Emails2 where EmailNo=?");
            pstm.setInt(1,n);
            pstm.executeUpdate();
                       }
           out.println("Email-Deleted </br>");
            out.println("<br/><br/><a href=userhome.jsp > <button>home</button></a>");                              
            con.close();
           
                       }
        catch(Exception c)
                       {
            out.print(c);
                                                     }
                             %>
    </body>
</html>
