
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String chatwithuser ;
        String uid=session.getAttribute("uid")+"";
        String q="delete from chatmessage where chatsessionofuserid=? and (fromuserid=? or touserid=?)";
        Connection con;
        PreparedStatement pstm ,pst ;
        ResultSet rs;
        String rno = request.getParameter("rno");
         int v = Integer.parseInt(rno);   
        try{
             Class.forName("com.mysql.jdbc.Driver");
            con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            
            pst=(PreparedStatement)con.prepareStatement("Select * from registeration where registeration_no=?");
            pst.setInt(1,v);
            rs=pst.executeQuery();
            rs.next();
            chatwithuser = rs.getString(5);
            pstm=(PreparedStatement)con.prepareStatement(q);
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
