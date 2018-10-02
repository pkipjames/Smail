

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                          
                 
               try{       
            java.sql.Connection con;
            java.sql.PreparedStatement pstm , pstm2 ,pstm3;
            java.sql.ResultSet rs ;
            String id = session.getAttribute("uid")+"" ; 
            String sno = request.getParameter("sno");
           int no=Integer.parseInt(sno);
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm2 =con.prepareStatement("Delete from Likes where status_no=? and liker_id=? ");  
              pstm2.setInt(1,no);  
               pstm2.setString(2,id);
              pstm2.executeUpdate();                                       
         pstm=con.prepareStatement("Select count(*) from Likes where status_no=? ");
            pstm.setInt(1,no);
            rs = pstm.executeQuery();
           
             int c=0;
                if( rs.next())
                                       {
            c=rs.getInt(1);
                                        }                             
             out.println("<font color=blue >Likes "+c+"</font>");
              pstm3 =con.prepareStatement("Update Status set likes=? where status_no=?");  
              pstm3.setInt(1,c);  
               pstm3.setInt(2,no);
              pstm3.executeUpdate(); 
             }
               catch(Exception e)
                                             {
                  
               }
               
            
        
        
        
        
        %>
    </body>
</html>
