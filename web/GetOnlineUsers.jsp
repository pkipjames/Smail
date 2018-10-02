
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
        Connection con;
        PreparedStatement pstm,pstm2;
        ResultSet rs,rs2;
        String uid=session.getAttribute("uid")+"";
        try{
             String uid1=session.getAttribute("uid")+"";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("select * from currentuser where id<>?");
            pstm.setString(1, uid1);
            rs=pstm.executeQuery();
            out.println("<select onchange=Fun() id=ulist size=15>");
            while(rs.next())
           {
             String uid2,unm2 ,unm3;
            uid2=rs.getString(1);
            unm2=rs.getString(2);
            unm3 = unm2.toUpperCase();
            pstm2=con.prepareStatement("select count(*) from chatmessage where fromuserid=? and touserid=? and ReadStatus='Unread'");
            pstm2.setString(1, uid2);
            pstm2.setString(2, uid);
            rs2=pstm2.executeQuery();
            int c=0;
            if(rs2.next())
                c=rs2.getInt(1);
            if(c>0)
            out.println("<option value="+uid2+">"+unm3+"("+c+")</option>");
            else
                out.println("<option value='"+uid2+"'>"+unm3+"</option>");
            }
            out.println("</select>");
        }catch(Exception e)
                               {
            out.println(e.toString());
        }
        %>
    </body>
</html>
