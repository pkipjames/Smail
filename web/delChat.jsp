
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
        String chatwithuser=request.getParameter("chatwithuser");
        String uid=session.getAttribute("uid")+"";
        String q="delete from chatmessage where chatsessionofuserid=? and (fromuserid=? or touserid=?)";
        Connection con;
        PreparedStatement pstm;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement(q);
            pstm.setString(1,uid);
            pstm.setString(2,chatwithuser);
            pstm.setString(3,chatwithuser);
            pstm.executeUpdate();
            
        }
        catch(Exception e)
                               {
            out.println(e.toString());
        }
        %>
    </body>
</html>
