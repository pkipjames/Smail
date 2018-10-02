

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <title>JSP Page</title>
          <script>
              function getprofile(rno)
              {
               
                  window.location='getProfile.jsp?rno='+rno;
               
               
               
              
                
              }
          </script>
    </head>
    <body background="i2.jpg">
        <%
           
               try{       
            java.sql.Connection con;
            java.sql.PreparedStatement pstm;
            java.sql.ResultSet rs;
            String id = session.getAttribute("uid")+"" ; 
           
          
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select * from registeration where email<>? ");
            pstm.setString(1,id);
            rs = pstm.executeQuery();
         out.println("<center><h1>Find-People</h1><fieldset style=width:20%; border:3px soid; ><legend style='background-color=white;' >ALL-USERS</legend>"); 
            out.println("<table width=10% >");
              while(rs.next())
                     {  
           String k = rs.getString(1);
           String m = rs.getString(7);
           String n = rs.getString(3);
           String l= k.toUpperCase();
           int o = rs.getInt(6); 
              
               out.println("<tr><td><img src='"+m+"' width=50 height=50 /></td><td align=center ><font color=red > &nbsp;"+l+"</font><br/>"+n+"</td><td><input type=button value=See-Profile onclick=getprofile("+o+") id=ps name=See-Profile /><td></tr>");      
                                   }
              
                   out.println("</table>");
                  out.println("</fieldset></center>");                          
               
           }
               catch(Exception e)
                                             {
                   out.print(e);
               }
               
            %> 
        
        
      <a href ="userhome.jsp" > <button style="border: 3px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; ">Home</button></a>
    
        
        
        
        
       
    </body>
</html>
