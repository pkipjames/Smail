

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comment</title>
    </head>
    <body>
         <%
                          
                 
               try{       
            java.sql.Connection con;
            java.sql.PreparedStatement pstm , pstm2 ,pstm3;
            java.sql.ResultSet rs ;
            String id = session.getAttribute("uid")+"" ; 
            String sno = request.getParameter("tuid");
           int no=Integer.parseInt(sno);
            String com = request.getParameter("msg");
          
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm2 =con.prepareStatement("Insert into comment(Status_no,cid,comment)values(?,?,?) ");  
              pstm2.setInt(1,no);  
               pstm2.setString(2,id);
               pstm2.setString(3,com);
              pstm2.executeUpdate();                                       
       
             }
               catch(Exception e)
                                             {
                  
               }
               
            
        
        
        
        
        %>
    </body>
</html>
