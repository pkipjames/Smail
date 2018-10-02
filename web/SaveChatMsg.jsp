<%-- 
    Document   : SaveChatMsg
    Created on : 25 Jul, 2018, 10:34:23 AM
    Author     : CHIRAG
--%>

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
        String md,mt,csuid,fuid,tuid,msg;
        java.util.Date dt=new  java.util.Date();
        int d,m,y,hh,mm,ss;
        d=dt.getDate();
        m=dt.getMonth()+1;
        y=dt.getYear()+1900;
        
        hh=dt.getHours();
        mm=dt.getMinutes();
        ss=dt.getSeconds();
        
        md=y+"-"+m+"-"+d;
        mt=hh+":"+mm+":"+ss;
        
        fuid=session.getAttribute("uid")+"";
        tuid=request.getParameter("tuid")+"";
        msg =request.getParameter("msg")+"";
        
        Connection con;
        PreparedStatement pstm;
        ResultSet rs;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("insert into chatmessage(MessageDate,MessageTime,ChatSessionofUserID,FromUserID,ToUserID,Message,ReadStatus,chatwithuser) values(?,?,?,?,?,?,?,?)");
            pstm.setString(1,md);
            pstm.setString(2,mt);
            pstm.setString(3,fuid);
            pstm.setString(4,fuid);
            pstm.setString(5,tuid);
            pstm.setString(6,msg);
            pstm.setString(7,"Unread");
            pstm.setString(8,tuid);
            pstm.executeUpdate();
            
            pstm=con.prepareStatement("insert into chatmessage(MessageDate,MessageTime,ChatSessionofUserID,FromUserID,ToUserID,Message,chatwithuser) values(?,?,?,?,?,?,?)");
            pstm.setString(1,md);
            pstm.setString(2,mt);
            pstm.setString(3,tuid);
            pstm.setString(4,fuid);
            pstm.setString(5,tuid);
            pstm.setString(6,msg);
            pstm.setString(7,fuid);
            pstm.executeUpdate();
            
            
                 
        }catch(Exception e)
                               {
            out.println(e.toString());
        }
        
        %>
    </body>
</html>
