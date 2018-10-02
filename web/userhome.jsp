<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" /> 
    <head>
        
         <title>Home Page</title>
          <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
         <script>
             var usno;
          function load()
          {
               $( "#timeline" ).load( "userhome.jsp #timeline" );
          }
          function reload()
          {
              setTimeout(load,1000);
              
          }
         function video()
         {
             window.location="video.jsp";
         }
             function opencomment(sno)
             {
                  window.location="commentbox.jsp?sno="+sno;
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
               function dellike(sno)
              {
                  usno=sno;
                   
                y=new XMLHttpRequest();
                y.onreadystatechange=function()
                {
                    if(y.readyState==4 && y.status==200)
                        {
                            document.getElementById("uli").innerHTML=y.responseText;
                        }
                }
                y.open("GET","dellike.jsp?sno="+usno,true);
                y.send();
              
              }
              function disable()
              {
                  document.getElementById("lik").disabled=true ;
                  
                   
                  
              }
            
         </script>
    </head>
    <body  style="background-repeat:no-repeat ; background-color:#1b4f72; background-position: center top;
      background-size:100%; background-repeat:repeat; background-blend-mode:multiply;
        text-shadow: #FFFFFF 0px 2px 0px;
        font-family: Georgia Times serif;
        -webkit-font-smoothing: antialiased;" >
  
        <fieldset style="width: 100%;  background-color:#ebf5fb " >
            <center>
          <h1 style="background-color:#FF851B;  position-absolutemargin:auto; margin-left:2%; border:3px solid #2ECC40 ; border-radius:5px; box-size:border-box; width:42%;" ><font color="white" >Welcome</font></h1>
  
         <br/>
         <fieldset style="width:98%; border:5px solid #FF851B;  background-color:white; border-radius:5px; ">
        <table  style="width:100%;  background-color:#FF851B;">
                      <tr><td><br/></td></tr>
                      <tr><td><br/></td></tr>
                     <tr><td><br/></td></tr>
                      <tr><td><br/></td></tr>
            <tr> 
                <td align="center" ></td>
            </tr>
        </table>
           <table  width="100%" style="background-color:white">
               <tr><td><br/></td></tr>
            <tr> 
                <td align="center">
                 
                  <%
               try{       
            java.sql.Connection con;
            java.sql.PreparedStatement pstm;
            java.sql.ResultSet rs;
            String id = session.getAttribute("uid")+"" ; 
           
           String pwd = session.getAttribute("pwd")+"";
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select * from registeration where email=? and password=?");
            pstm.setString(1,id);
            pstm.setString(2,pwd);
           
            rs = pstm.executeQuery();
            rs.next();
            String k = rs.getString(1);
          String l= k.toUpperCase();
             out.println("<center><i><b><h3><font color=#0074D9> Hello </font><font color=#FF4136 > &nbsp;"+l+"</font><font color=#0074D9> </font></h3></b></i></center>");
           
                           }
               catch(Exception e)
                                             {
                   out.print(e);
               }
               
            %>
            </td>
            </tr>
                      <tr><td><br/></td></tr>
           </table>
    
            <table  width="100%"  style=" background-color:#2ECC40  ">
                <tr><td><br/></td></tr>
                <tr align="center"><td>&nbsp;</td>
                    <td align="right"><form method="get" action="http://www.google.com/search"  >
                    <input type="Search" id="mysearch" name="q" placeholder="Search" required alt="www.google.com/search" style="border:4px solid #FF851B ; border-radius:20px; display:inline-block; text-align:center; color:#0074D9; background-color:white; font-size:12px; padding:5px 22px;" />
               <input type="submit" value="Search" style="  cursor:pointer; border: 4px solid #FF851B; border-radius:20px; display:inline-block; text-align:center; color:#0074D9; background-color:white; font-size:12px;  " />
            </form>
             </td>
             </tr>
              <tr><td></td></tr>
            </table>
    </fieldset>
    </center>
          <br/>
             <fieldset style="width:98%; background-color:white; border:2px solid #FF851B;  border-radius:5px;  ">
                <legend style="background-color:white; ">Mail-Box</legend>
            <table  width="100%" >
                     <td  align="center"><a href="compose.jsp" ><button style="  cursor:pointer; width:100%; color:#2ECC40 ; border: 4px solid #FF851B; border-radius:5px;  background-color:white; font-color:white; " ><bold>Compose</bold></button></a></td>
                <td  align="center"><a href="Inbox.jsp" ><button style="width:100%;   cursor:pointer; color:#2ECC40 ; border: 4px solid #FF851B; border-radius:5px;  background-color:white; font-color:white; "><bold>In-Box</bold></button></a></td>
                <td> <a href="sendmessage.jsp"><button style="width:100%; color:#2ECC40 ;   cursor:pointer; padding:3px 3px; border: 3px solid white; border-radius:5px;  background-color:#FF851B ;   "><bold><font color="white" size="6px" >Emergency</font></bold></button></a>
                </td>
                <td  align="center"><a href="Sent.jsp"> <button style="width:100%;   cursor:pointer; color:#2ECC40 ; border: 4px solid #FF851B; border-radius:5px;  background-color:white; font-color:white; "><bold>Sent-Box</bold></button></a></td>
                 <td  align="center"><a href="contact.jsp"> <button style="width:80%;   cursor:pointer; color:#2ECC40 ; border: 4px solid #FF851B; border-radius:5px;  background-color:white; font-color:white; "><bold>Update-Contact</bold></button></a></td>
              
            </table>
            </fieldset>
            <br/>
            <fieldset style="width:98%; background-color:white;border:2px solid #FF851B; border-radius:5px; ">
                <legend style="background-color:white;" >Social-media</legend>
             <table  width="100%">
                 <tr><br/></tr>
             <tr>
           
                 <td  align="center"><a href="profile.jsp" ><button style="width:100%;   cursor:pointer; color:#2ECC40 ; border: 5px solid #FF851B; border-radius:5px; background-color:white; font-color:white; "><bold>Profile</bold></button></a></td>
                 <td  align="center"><a href="chat.jsp"><button style="width:100%;   cursor:pointer; color:#2ECC40 ; border: 5px solid #FF851B; border-radius:5px;  background-color:white; font-color:white; "><bold>Chat-Online</bold></button></a></td>
              <td  align="center"><a href="findpeople.jsp"><button style="width:100%;   cursor:pointer; color:#2ECC40 ; border: 5px solid #FF851B; border-radius:5px;  background-color:white; font-color:white; "><bold>All-Users</bold></button></a></td>
              <td  align="center"><a href="chathistory.jsp"><button style="width:100%;   cursor:pointer; color:#2ECC40 ; border: 5px solid #FF851B; border-radius:5px;  background-color:white; font-color:white; "><bold>Chat-History</bold></button></a></td>
              
                <td  align="center"><a href="logout.jsp"><button style="width:100%;   cursor:pointer; color:#2ECC40 ; border: 5px solid #FF851B; border-radius:5px;  background-color:white; font-color:white; "><bold>Logout</bold></button></a></td>
              
             </tr>
        </table>
            </fieldset>
           <br/>
             <fieldset style="width:50%; align:center;background-color:#FF851B; border-radius:10px; background-blend-mode:overlay; border: 4px solid #2ECC40;  ">
                <legend style="background-color:white; ">Upload-Status</legend>
            <form action="savepost.jsp" method="post" enctype="multipart/form-data" >
                <table>
                    <tr>
                        <td><input type="text-area" placeholder="Status" rows="num" cols="num" id="status" name="status" style="resize:none; width:600px; height:100px; border: 4px solid #2ECC40; border-radius:5px; display:inline-block; text-align:center; color:#2ECC40; background-color:white; font-size:12px;  font-size:16px; padding:5px 22px; " required/></td>
                    
                    </tr>
                    <tr>
                        <td colspan="2" >
                            <input type="file" name="photo" id="pic" accept="image/*" style="border: 4px solid #2ECC40; border-radius:5px; display:inline-block; text-align:center; color:#2ECC40; background-color:white ; font-size:12px;   padding:3px 15px;" required/>
                        </td>
                    </tr><tr>
                        <td align="left">
                            <input type="submit" value="Upload" style="border: 4px solid #2ECC40; border-radius:5px; display:inline-block; text-align:center; color:#2ECC40; background-color:white; font-size:12px;   padding:3px 16px;" />
                        </td>
                    </tr>
                </table>
            </form> 
            </fieldset>
           <br/>
             <br/><br/>   
           <center>
               <div id="timeline">
               <fieldset style="width:90%; background-color:white; align:center; border:4px solid #FF851B;  border-radius:10px;  ">
               <legend style="background-color:#FF851B; align:left; position-absolutemargin:auto; margin-left:2%; border-radius:5px; box-size:border-box; width:22%;"><h3><b><font color="white">Time-Line</font></b></h3></legend> 
               <%
              java.sql.Connection con;
            java.sql.PreparedStatement pstm ,pstm2 ,pstm3;
            java.sql.ResultSet rs,rs2,rs3;
            String id = session.getAttribute("uid")+"" ; 
           try{
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select * from  status order by status_no DESC");
             rs = pstm.executeQuery();
          while(rs.next())
                           {
                String k = rs.getString(1);
                String s =rs.getString(2);
                 String ps=rs.getString(3);
                 int sno = rs.getInt(4);
                 int likes=rs.getInt(5);
               
                     pstm3=con.prepareStatement("Select * from  likes where liker_id =? and status_no=?");
                    pstm3.setString(1,id);
                    pstm3.setInt(2,sno);
                   rs3=pstm3.executeQuery();
                if (  rs3.next())
                                  {    
                  pstm2=con.prepareStatement("Select * from  registeration where email=?");
                pstm2.setString(1,k);
                   rs2=pstm2.executeQuery();
                   rs2.next();                    
                String unm = rs2.getString(1);
                String l= unm.toUpperCase();
                String pp= rs2.getString(7);
                int o=rs2.getInt(6);
                out.println("<br/><br><center><fieldset style='width:40%; border-radius:10px; border:5px solid #2ECC40 ; background:white; align=center;'  >");
               out.println("<table><tr><td>");
                out.println("<table width=100%; ><tr><td><image src='"+pp+"' width=15%  />&nbsp;&nbsp;<font color=#0074D9><b>"+l+"</b></font></td><td><input type=button value=View-Profile onclick=getprofile("+o+") id=ps name=See-Profile style=' cursor:pointer; border: 3px solid #FF851B; border-radius:5px; display:inline-block; text-align:center; color:#FF851B; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; ' /></td></tr></table>");
                 out.println("<p align=left ><font color=#FF4136>"+s+"</font></p><br/><br/><img src='"+ps+"' style ='width:100%; align:center;' />");
                out.println("<table width=100% ><tr><td id='uli'><font color='green'>Likes "+likes+"</font><td><tr><tr><td align='center' ><input type=button value=Unlike id='lik';  onclick='dellike("+sno+");reload();' style='border: 3px solid #57e207 ;   cursor:pointer; border-radius:5px; display:inline-block; text-align:center; color:white; background-color:#57e207; font-size:12px;   padding:5px 12px; ' /></td><td align='center' ><input type=button value=Comment onclick='opencomment("+sno+")' style='border: 3px solid #FF4136;   cursor:pointer; border-radius:5px; display:inline-block; text-align:center; color:#FF4136; background-color:white; font-size:12px;  padding:5px 12px; ' /></td><td align='center' ><input type=button value='share->' onclick='Share("+sno+");reload();'  style='border: 3px solid #FF4136;   cursor:pointer; border-radius:5px; display:inline-block; text-align:center; color:#FF4136; background-color:white; font-size:12px;   padding:5px 12px; ' /></td></tr></table> ");
                out.println("</td></tr></table></fieldset></center><br/><br/>");
                              }
                   else
                                             {
                pstm2=con.prepareStatement("Select * from  registeration where email=?");
                pstm2.setString(1,k);
                   rs2=pstm2.executeQuery();
                   rs2.next();                    
                String unm = rs2.getString(1);
                String l= unm.toUpperCase();
                String pp= rs2.getString(7);
                int o=rs2.getInt(6);
                out.println("<br/><br><center><fieldset style='width:40%; border-radius:10px; border:5px solid #2ECC40 ; background:white; align=center;'  >");
               out.println("<table><tr><td>");
                out.println("<table width=100%; ><tr><td><image src='"+pp+"' width=15%;  />&nbsp;&nbsp;<font color=#0074D9><b>"+l+"</b></font></td><td><input type=button value=View-Profile onclick=getprofile("+o+") id=ps name=See-Profile style='  cursor:pointer; border: 3px solid #FF851B; border-radius:5px; display:inline-block; text-align:center; color:#FF851B; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; ' /></td></tr></table>");
                 out.println("<p align=left ><font color=#FF4136>"+s+"</font></p><br/><br/><img src='"+ps+"' width=100%;  />");
                out.println("<table width=100% ><tr><td id='li' ><font color='blue'>Likes "+likes+"</font><td><tr><tr><td align='center' ><input type=button value=Like id='lik';  onclick='like("+sno+");reload();' style='border: 3px solid #FF4136 ;   cursor:pointer; border-radius:5px; display:inline-block; text-align:center; color:#FF4136; background-color:white; font-size:12px;   padding:5px 12px; ' /></td><td align='center' ><input type=button value=Comment onclick='opencomment("+sno+")' style='border: 3px solid #FF4136; border-radius:5px; display:inline-block;   cursor:pointer; text-align:center; color:#FF4136; background-color:white; font-size:12px;  padding:5px 12px; ' /></td><td align='center' ><input type=button value='share->' onclick='Share("+sno+");reload();'  style='border: 3px solid #FF4136; border-radius:5px;   cursor:pointer; display:inline-block; text-align:center; color:#FF4136; background-color:white; font-size:12px;   padding:5px 12px; ' /></td></tr></table> ");
                out.println("</td></tr></table></fieldset></center><br/><br/>");
                
                   }
                }
            
            
                           }
                                                     
               catch(Exception e)
                                             {
                   out.print(e);
               }
            
            %>
            </fieldset>
            </div>
          
           </center>
        </fieldset>
    
           </body>
</html>