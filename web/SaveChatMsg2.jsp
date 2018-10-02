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
        try
                               {
        String md,mt,csuid,fuid,msg;
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
       String no=request.getParameter("rno");
       int e = Integer.parseInt(no);
        msg =request.getParameter("msg")+"";
        
        Connection con;
        PreparedStatement pstm,pstm2;
        ResultSet rs,rs2;
        
        
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
              pstm2=con.prepareStatement("select* from registeration where Registeration_no=?");
              pstm2.setInt(1,e);
              rs2= pstm2.executeQuery();
              rs2.next();
              String tuid=rs2.getString(5);
            pstm=con.prepareStatement("insert into chatmessage(MessageDate,MessageTime,ChatSessionofUserID,FromUserID,ToUserID,Message,ReadStatus) values(?,?,?,?,?,?,?)");
            pstm.setString(1,md);
            pstm.setString(2,mt);
            pstm.setString(3,fuid);
            pstm.setString(4,fuid);
            pstm.setString(5,tuid);
            pstm.setString(6,msg);
            pstm.setString(7,"Unread");
            pstm.executeUpdate();
            
            pstm=con.prepareStatement("insert into chatmessage(MessageDate,MessageTime,ChatSessionofUserID,FromUserID,ToUserID,Message) values(?,?,?,?,?,?)");
            pstm.setString(1,md);
            pstm.setString(2,mt);
            pstm.setString(3,tuid);
            pstm.setString(4,fuid);
            pstm.setString(5,tuid);
            pstm.setString(6,msg);
            pstm.executeUpdate();
            
            
                 
        }
        catch(Exception v)
                               {
            out.println(v.toString());
        }
        
        %>
    </body>
</html>
