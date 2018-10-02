

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
             function gethistory(rno)
             {
                  window.location="chatting.jsp?rno="+rno;
             }
              function goBack()
            {
                window.history.back();
            }
              function getprofile(rno)
              {
               
                  window.location='getProfile.jsp?rno='+rno;
              }
        </script>
    </head>
    <body  background="red.jpg" style="background-repeat:no-repeat ; background-color: #F9F9F9; background-position: center top;
      background-size:100%; background-repeat:repeat;
        text-shadow: #FFFFFF 0px 1px 0px;
        font-family: Georgia Times serif;
        -webkit-font-smoothing: antialiased;" >
       <center> <h1 style="background-color:white; width:50% " ><font color="red"><hr/ color="red">Chat-History<hr/ color="red"></font></h1></center>
   
        <br/> <button  onclick='goBack()' style="border: 3px solid orangered; border-radius:20px; display:inline-block; text-align:center; color:orangered; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; " >Back</button>
        <center> <br/><br/> <fieldset style="width:60%; background-color:antiquewhite;   align:center; border:10px solid orangered;  border-radius:30px;  ">
          
        <%  
            java.sql.Connection con;
            java.sql.PreparedStatement pstm ,pstm2 ;
            java.sql.ResultSet rs,rs2;
            String id = session.getAttribute("uid")+"" ; 
           try{
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select * from  chatmessage where (ChatSessionofUserID=?) group by chatwithuser order by MessageDate ASC,MessageTime DESC ");
            pstm.setString(1, id);                            
            rs = pstm.executeQuery();
          while(rs.next())
                           {
                String k = rs.getString(2);
                String s =rs.getString(3);
                 String ps=rs.getString(9);
                pstm2=con.prepareStatement("Select * from  registeration where email=?");
                pstm2.setString(1,ps);
                   rs2=pstm2.executeQuery();
                   rs2.next();
                    
              String unm = rs2.getString(1);
                String l= unm.toUpperCase();
                String pp= rs2.getString(7);
                int o=rs2.getInt(6);
                out.println("<br/><br><fieldset style='width:70%; border-radius:15px; border:4px solid green; background:white; align=center;'  >");
               out.println("<table><tr><td>");
                out.println("<table width=100%; ><tr><td><image src='"+pp+"' width=50; height=60; /><td>&nbsp;&nbsp;<font color=blue><b>"+l+"</b></font></td><td >&nbsp;&nbsp;&nbsp;&nbsp;<input type=button value='View chat' onclick=gethistory("+o+") id=ps name=See-Profile style='border: 3px solid orangered; border-radius:20px; display:inline-block; text-align:center; color:orangered; background-color:white; font-size:12px;  padding:5px 12px; ' /></td><td><input type=button value=View-Profile onclick=getprofile("+o+") id=ps name=See-Profile style='border: 3px solid orangered; border-radius:20px; display:inline-block; text-align:center; color:orangered; background-color:white; font-size:12px;  font-size:12px; padding:5px 12px; ' /></td></tr></table>");
                 out.println("</td></tr></table><table  width=60% ><tr><td><font color=blue >Time: "+s+"</font><td align=center ><font color=blue >Date: "+k+" </font></td></tr></table></fieldset><br/><br/>");
               
                }
            
            
                           }
                                                     
               catch(Exception e)
                                             {
                   out.print(e);
               }
            
            %>
          </fieldset>
        </center>
    </body>
</html>
