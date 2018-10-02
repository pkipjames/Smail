<%-- 
    Document   : contacts
    Created on : Jul 11, 2018, 9:19:15 PM
    Author     : singla
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        String a = request.getParameter("a");
        String b = request.getParameter("b");
        String c = request.getParameter("c");
    
        String e = session.getAttribute("a")+"" ; 
        

       
  try {
              Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            
 
 
           PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into contact (email,c1,c2,c3)values(?,?,?,?)");
            ps.setString(1,e);
            ps.setString(2,a);
            ps.setString(3,b);
            ps.setString(4,c);
          
          int i = ps.executeUpdate();
 if(i==1)
 {
     out.print("You'r contact is updated now");
  
     
 }
               } 
          catch (Exception e2) {
            out.println(e2);            
            out.close();
        }
   
       
        %>
    </body>
</html>
