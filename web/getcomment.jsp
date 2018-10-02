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
        <script>
       
      
        </script>
    </head>
   <%                                    
        String uid,sno;
        uid=session.getAttribute("uid")+"";
        sno=request.getParameter("sno");
        int e = Integer.parseInt(sno);
        Connection con;
        PreparedStatement pstm,pstm2 ;
        ResultSet rs ,rs2 ; 
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
             pstm =con.prepareStatement("select * from comment where Status_no=? ");
          pstm.setInt(1,e);
          rs = pstm.executeQuery();
          String reply="";        
        
                       
          while(rs.next())
                     {  
         String cid = rs.getString(2);
         String com = rs.getString(3);
          int cno = rs.getInt(4);
          pstm2 =con.prepareStatement("select * from registeration where email=? ");
          pstm2.setString(1,cid);
          rs2=pstm2.executeQuery();
         rs2.next();
                         
        String cnm=rs2.getString(1);
        String pic=rs2.getString(7);
   
             
 reply=reply+"<fieldset style=' width:60%; background-color:white; border-radius:10px; border:2px solid blue;' ><table style='width:70%'  ><tr><td><img src='"+pic+"' width=50 height=50 /> "+cnm+" </font ></td><td align='left'> <font color=blue>"+com+"</font></td></tr></table></fieldset></div><br/><br/>";
          out.println(reply); 
             }                                         
         }
                          
     
          
                                        
       
          
              
                 
        catch(Exception v)
       {
            out.println(v.toString());
       }
        %>
    </body>
</html>
