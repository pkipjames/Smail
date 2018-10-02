
 
<%@page import="java.net.URLDecoder"%>
<%@page import="com.mysql.jdbc.Blob"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <script>
           var usno;
           function goBack()
            {
                window.history.back();
            }
        function chat(rno)
        {
          
               
                  window.location='chatting.jsp?rno='+rno;
       }
         function Share(sno)
              {
                  usno=sno;
               z=new XMLHttpRequest();
                z.onreadystatechange=function()
                {
                   
                }
                z.open("GET","Share.jsp?sno="+usno,true);
                z.send();
                  
              }
               function like(sno)
              {
                  usno=sno;
                   
                y=new XMLHttpRequest();
                y.onreadystatechange=function()
                {
                    if(y.readyState==4 && y.status==200)
                        {
                            document.getElementById("li").innerHTML=y.responseText;
                        }
                }
                y.open("GET","sendlike.jsp?sno="+usno,true);
                y.send();
                  
              }
              
             function opencomment(sno)
             {
                  window.location="commentbox.jsp?sno="+sno;
             }
  </script>
    </head>
    <body background="red5.jpg" width=80%>
      
         <button  onclick='goBack()' >Back</button>
        <%
           java.sql.ResultSet rs;
        java.sql.Connection con;
           java.sql.PreparedStatement pstm;
                    try
                    { 
       
          String rno = request.getParameter("rno");
          int e = Integer.parseInt(rno);
         String id = session.getAttribute("uid")+"" ; 
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select*from registeration where Registeration_no=?");
            pstm.setInt(1,e);
            
            rs = pstm.executeQuery();
            rs.next();
              
                  String u =rs.getString(1); String l= u.toUpperCase();
                  String g =rs.getString(3); String k = g.toUpperCase();
                 String m= rs.getString(4);  String H= m.toUpperCase();
                 String pic = rs.getString(7);
                  String country = rs.getString(8);                 
                 String email=rs.getString(5);
                 if(email.equalsIgnoreCase(id))
                                         
                 {
                     out.println("<center>");
                 
             out.println("<h1 style=background-color:white; ><u>"+l+"-PROFILE</u></h1>");
         out.println("<br/><br/><br/><br/><br/>");
              
          
               out.println("<table width=50% height=200 background=red3.jpg >");
                 out.println("<tr>");
               out.println("<td><br/><br/></td></tr><tr><td align=center><img border=3  src='"+pic+"'   /></td><tr></table>");  
 
            
              out.println("<table width=50%  bgcolor=white>");
                  
             out.println("<tr><td>USER-NAME</td><td>"+l+"</td>");
              out.println("</tr>");
               out.println("<tr>");
             out.println("<td>GENDER</td><td>"+k+"</td>");
              out.println("</tr>");
               out.println("<tr>");
             out.println("<td>MOBILE-NO</td><td>"+H+"</td>");
              out.println("</tr>"); 
               out.println("<tr>");
             out.println("<td>E-MAIL</td><td>"+email+"</td>");
              out.println("</tr>"); 
               out.println("<tr>");
             out.println("<td>Country</td><td>"+country+"</td>");
              out.println("</tr>");
             out.println("</table><br/><br/>");
        
           
                       
      
              
            java.sql.PreparedStatement pstm2 ;
            java.sql.ResultSet rs2;
            
          
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select * from  status where id=? order by status_no DESC ");
            pstm.setString(1,email);
             rs = pstm.executeQuery();
          while(rs.next())
                           {
                String y = rs.getString(1);
                String s =rs.getString(2);
                 String ps=rs.getString(3);
                 int sno = rs.getInt(4);
                 int likes=rs.getInt(5);
                pstm2=con.prepareStatement("Select * from  registeration where email=?");
                pstm2.setString(1,y);
                   rs2=pstm2.executeQuery();
                   rs2.next();
              String unm = rs2.getString(1);
                String p= unm.toUpperCase();
                String pp= rs2.getString(7);
                int o=rs2.getInt(6);
                
              out.println("<br/><br><center><fieldset style='width:40%; border-radius:15px; border:20px solid green; background:white; align=center;'  >");
               out.println("<table><tr><td>");
                out.println("<table width=100%; ><tr><td><image src='"+pp+"' width=50; />&nbsp;&nbsp;<font color=blue><b>"+l+"</b></font></td></table>");
                 out.println("<hr/ color=green ><p align=left ><font color=red>"+s+"</font></p><br/><br/><img src='"+ps+"' width=80%; />");
                out.println("<table width=100% ><tr><td id='li' >Likes("+likes+")<td><tr><tr><td align='center' ><hr/ color=green ><input type=button value=Like id='lik';  onclick='like("+sno+");' style='border: 3px solid red ; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;   padding:5px 12px; ' /></td><td align='center' ><hr/ color=green ><input type=button value=Comment onclick='opencomment("+sno+")' style='border: 3px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  padding:5px 12px; ' /></td><td align='center' ><hr/ color=green ><input type=button value='share->' onclick=Share("+sno+")  style='border: 3px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;   padding:5px 12px; ' /></td></tr></table><hr/ color=green >");
                out.println("</td></tr></table></fieldset></center><br/><br/>");
             }
                         }
                
                 else
                                         {
                 out.println("<center>");
             out.println("<h1 style=background-color:white; ><u>"+l+"-PROFILE</u></h1>");
         out.println("<br/><br/><br/><br/><br/>");
              
          
               out.println("<table width=50% height=200 background=red3.jpg >");
                 out.println("<tr>");
               out.println("<td><br/><br/></td></tr><tr><td align=center><img border=3  src='"+pic+"'  width=30% /></td><tr></table>");  
 
            
              out.println("<table width=50%  bgcolor=white>");
                  
             out.println("<tr><td>USER-NAME</td><td>"+l+"</td>");
              out.println("</tr>");
               out.println("<tr>");
             out.println("<td>GENDER</td><td>"+k+"</td>");
              out.println("</tr>");
               out.println("<tr>");
             out.println("<td>MOBILE-NO</td><td>"+H+"</td>");
              out.println("</tr>"); 
               out.println("<tr>");
             out.println("<td>E-MAIL</td><td>"+email+"</td>");
              out.println("</tr>"); 
               out.println("<tr>");
             out.println("<td>Country</td><td>"+country+"</td>");
              out.println("</tr>");
                        
              out.println("<tr><td align=right ><button style='border:3px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;   padding:4px 40px;'  value=See-Profile onclick=chat("+e+") id=ps name=chat >Chat</button>");
        out.println("</td><tr></table><br/><br/>");
        
           
                       
      
              
            java.sql.PreparedStatement pstm2 ;
            java.sql.ResultSet rs2;
            
          
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select * from  status where id=? order by status_no DESC ");
            pstm.setString(1,email);
             rs = pstm.executeQuery();
          while(rs.next())
                           {
                String y = rs.getString(1);
                String s =rs.getString(2);
                 String ps=rs.getString(3);
                 int sno = rs.getInt(4);
                 int likes=rs.getInt(5);
                pstm2=con.prepareStatement("Select * from  registeration where email=?");
                pstm2.setString(1,y);
                   rs2=pstm2.executeQuery();
                   rs2.next();
              String unm = rs2.getString(1);
                String p= unm.toUpperCase();
                String pp= rs2.getString(7);
                int o=rs2.getInt(6);
                
              out.println("<br/><br><center><fieldset style='width:40%; border-radius:15px; border:20px solid green; background:white; align=center;'  >");
               out.println("<table><tr><td>");
                out.println("<table width=100%; ><tr><td><image src='"+pp+"' width=50;  />&nbsp;&nbsp;<font color=blue><b>"+l+"</b></font></td></table>");
                 out.println("<hr/ color=green ><p align=left ><font color=red>"+s+"</font></p><br/><br/><img src='"+ps+"' width=100%;  />");
                out.println("<table width=100% ><tr><td id='li' >Likes("+likes+")<td><tr><tr><td align='center' ><hr/ color=green ><input type=button value=Like id='lik';  onclick='like("+sno+");' style='border: 3px solid red ; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;   padding:5px 12px; ' /></td><td align='center' ><hr/ color=green ><input type=button value=Comment onclick='opencomment("+sno+")' style='border: 3px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  padding:5px 12px; ' /></td><td align='center' ><hr/ color=green ><input type=button value='share->' onclick=Share("+sno+")  style='border: 3px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;   padding:5px 12px; ' /></td></tr></table><hr/ color=green >");
                out.println("</td></tr></table></fieldset></center><br/><br/>");
                               }
                 }
   con.close();    }  catch(Exception j)
                             {
           out.println(j.toString());
       }
                
  %>
        
        </body>
</html>
