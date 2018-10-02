<%-- 
    Document   : Share
    Created on : Jul 30, 2018, 1:44:01 PM
    Author     : singla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Share</title>
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
            pstm2 =con.prepareStatement("Select* from status where status_no=? ");  
              pstm2.setInt(1,no);  
              rs = pstm2.executeQuery();     
               rs.next();
              String st=rs.getString(2); 
              String pi=rs.getString(3); 
               int li = 0;                                                                      
         pstm=con.prepareStatement("Insert into status(id,status,photo,likes) value(?,?,?,?)");
            pstm.setString(1,id);
            pstm.setString(2,st);
            pstm.setString(3,pi);
           pstm.setInt(4,li); 
           pstm.executeUpdate();
           
            
                      }
               catch(Exception e)
                                             {
                  out.println(e.toString());
               }
               
            
        
        
        
        
        %>
    </body>
</html>
