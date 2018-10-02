

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
        String chatwithuser ;
        String cno=request.getParameter("sno")+"";
        Connection con;
        PreparedStatement pstm ,pst ;
        ResultSet rs;
        
         int v = Integer.parseInt(cno);   
        try{
             Class.forName("com.mysql.jdbc.Driver");
            con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            
            pst=(PreparedStatement)con.prepareStatement("delete from comment where Status_no=?");
            pst.setInt(1,v);
            pst.executeUpdate();
         
        }
        catch(Exception e)
                               {
            out.println(e.toString());
        }
        %>
    </body>
</html>
