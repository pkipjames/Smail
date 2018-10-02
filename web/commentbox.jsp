<%-- 
    Document   : commentbox
    Created on : Jul 30, 2018, 10:20:29 PM
    Author     : singla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function delcom(sno)
           {
             
              cono=sno
               
               z=new XMLHttpRequest();
                z.onreadystatechange=function()
                {
                   if(x.readyState==4 && x.status==200)
                        document.getElementById("cb").innerHTML="<h1>No-Comments-To-Show<h1>";
             
                }
                z.open("GET","delcom.jsp?sno="+cono,true);
                z.send();
           }
             function getprofile(rno)
              {
               
                  window.location='getProfile.jsp?rno='+rno;
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
           function getcomment(sno)
         {   
              usno=sno;
         
                y=new XMLHttpRequest();
                y.onreadystatechange=function()
                {
                    if(y.readyState==4 && y.status==200)
                        {
                            document.getElementById("cb").innerHTML=y.responseText;
                        }
                }
                y.open("GET","getcomment.jsp?sno="+usno,true);
                y.send();
                 }
                   function comment(sno)
           {
                msg=document.getElementById("com").value;
                tuid = sno;
              
                x=new XMLHttpRequest();
                x.open("GET","Comment.jsp?tuid="+tuid+"&msg="+msg,true);
                x.onreadystatechange=function()
                {
                    
                }
                x.send();
                
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
                function goBack()
            {
                window.history.back();
            }
        </script>
    </head>
    <body background="b1.jpg" >
        <button  onclick='goBack()' >Back</button>
           <%
               try{       
            java.sql.Connection con;
            java.sql.PreparedStatement pstm ,pstm2;
            java.sql.ResultSet rs, rs2 ;
            String id = session.getAttribute("uid")+"" ; 
            String no= request.getParameter("sno");
            int sno=Integer.parseInt(no);
            String pwd = session.getAttribute("pwd")+"";
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select * from status where Status_no=?");
            pstm.setInt(1,sno);
            rs = pstm.executeQuery();
           while(rs.next())
                             {
            String k = rs.getString(1);
                String s =rs.getString(2);
                 String ps=rs.getString(3);
                 int likes=rs.getInt(5);
                pstm2=con.prepareStatement("Select * from  registeration where email=?");
                pstm2.setString(1,k);
                   rs2=pstm2.executeQuery();
                   rs2.next();
                    
              String unm = rs2.getString(1);
                String l= unm.toUpperCase();
                String pp= rs2.getString(7);
                int o=rs2.getInt(6);
                out.println("<br/><br><center><fieldset style='width:40%; border-radius:15px; background:white; align=center;'  >");
               
                out.println("<table width=100%; ><tr><td><image src='"+pp+"' width=50; height=60; />&nbsp;&nbsp;<font color=blue>"+l+"</font></td><td><input type=button value=View-Profile onclick=getprofile("+o+") id=ps name=See-Profile style='border: 3px solid blue; border-radius:20px; display:inline-block; text-align:center; color:blue; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; ' /></td></tr></table>");
                 out.println("<hr/><p align=left ><font color=red>"+s+"</font></p><br/><br/><img src='"+ps+"' width=100%; height=100%; />");
                out.println("<table width=100% ><tr><td id='li' ><font color='blue'>Likes "+likes+"</font><td></tr><tr><td><input type=button value=Like id='lik';  onclick='like("+sno+");' /><input type=button value='share->' onclick=Share("+sno+") /></td><td align='right' ><input type=button value=Delete-comments  onclick='delcom("+sno+")' /></td></tr></table>");
                out.println("<table width=100% ><tr><td align='left'><form><input type=button value=Comment onclick='comment("+sno+"); ' /><input type=text id='com' placeholder='Write a Comment....' required /></form></td><td align='right'><input type='button' onclick='getcomment("+sno+");' value='Load-Comment' /></td></tr></table></field></center><br/><br/>");
               out.println("<center><div id='cb' style='background-color:lightblue; width:600px; height:400px; scroll:auto; border: 5px solid white; display:inline-block;  color:red; font-size:12px; border-radius:20px; overflow-y:scroll;' ><h1><font color=blue>Comment-Box</font></h1></div></center>");
                
                                      }
            }
               catch(Exception e)
                                             {
                   out.println(e);
               }
               
            %>
    </body>
</html>
