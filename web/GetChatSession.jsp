

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
        String uid,chatwithuser;
        uid=session.getAttribute("uid")+"";
        chatwithuser=request.getParameter("chatwithuser");
        Connection con;
        PreparedStatement pstm,pstm2;
        ResultSet rs; 
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("select * from chatmessage where  ((fromuserid=? and touserid=?) or(fromuserid=? and touserid=?)) and chatSessionofUserID=?");
            pstm.setString(1, uid);
            pstm.setString(2, chatwithuser);
            pstm.setString(3, chatwithuser);
            pstm.setString(4, uid);
            pstm.setString(5, uid);
            rs=pstm.executeQuery();
            String reply="";
            while(rs.next())
            {
                String md,mt,fuid,tuid,msg,rst;
                md=rs.getString(2);
                mt=rs.getString(3);
                fuid=rs.getString(5);
                tuid=rs.getString(6);
                msg=rs.getString(7);
                rst=rs.getString(8);
                if(fuid.equals(uid))
                                  {     
                reply=reply+"<div align=right><p style='width:50%;font-size:smaller;color:blue; text-align:center; background-color:white; border-radius:3px; border-style:solid'><font color=greeen>You: "+md+" "+mt+" "+rst+"</font >";
               reply=reply+"<br><font color=red>"+msg+"</font></p></div>";
                             }
                else
                                   {
                    reply=reply+"<div align=left ><p style='width:65%; font-size:smaller;color:red; text-align:center; background-color:white; border-radius:3px; border-style:solid'><font color=green>"+fuid+" "+md+" "+mt+"</font>";
                     reply=reply+"<br><right><font color=blue>"+msg+"</font></p></div>";
                                       }
            }
                
                out.println(reply);
                
                
               String q ="update chatmessage set readstatus='Read' where chatsessionofuserid=? and touserid=? " ;
                pstm2=con.prepareStatement(q);
                pstm2.setString(1, chatwithuser);
                pstm2.setString(2, uid);
                pstm2.executeUpdate();
        
            
                   
            
        }
        catch(Exception e)
       {
            out.println(e.toString());
;        }
        %>
    </body>
</html>
