


<html>
    <head>
       
        <script>
              function goBack()
            {
                window.history.back();
            }
           var chatwithuserno
           var k;
           function setrno(rno)
           {
            k=rno;   
           }
           function load()
           {
               getchat(k);
          setTimeout(load,1500);
      }
           
            function getchat(rno)
           
        {   
              
            chatwithuserno = rno;
                y=new XMLHttpRequest();
                y.onreadystatechange=function()
                {
                    if(y.readyState==4 && y.status==200)
                        {
                            document.getElementById("cb").innerHTML=y.responseText;
                        }
                }
                y.open("GET","getChatSession2.jsp?rno="+chatwithuserno,true);
                y.send();
                 }
       
                 
             function sendMessage()
            { 
                msg=document.getElementById("msg").value;
                rno = chatwithuserno;
              
                x=new XMLHttpRequest();
                x.open("GET","SaveChatMsg2.jsp?rno="+chatwithuserno+"&msg="+msg,true);
                x.onreadystatechange=function()
                {
                    
                }
                x.send();
                
            }
            
              function delchatsession()
            {
                
                x=new XMLHttpRequest();
                x.open("GET","delChat2.jsp?rno="+chatwithuserno,true);
                x.onreadystatechange=function()
                {
                    if(x.readyState==4 && x.status==200)
                        document.getElementById("cb").innerHTML="";
                }
                x.send();

          }
               function setuser(rno)
               { 
                   chatwithuserno = rno;
               }
              
        </script>
    </head>
    
        <%
         java.sql.ResultSet rs;
        java.sql.Connection con;
           java.sql.PreparedStatement pstm;
                   
                   
       
          String rno = request.getParameter("rno");
          int e = Integer.parseInt(rno);
         
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select*from registeration where Registeration_no=?");
            pstm.setInt(1,e);
           rs = pstm.executeQuery();
            rs.next();
       String tuid = rs.getString(5);
       String unm=rs.getString(1);
       out.println("<body onload='setuser("+e+");getchat("+e+");setrno("+e+");load();' background=red3.jpg;>");
       out.println("<center><h1><font color=blue>"+tuid+"</font><h1>");
       
    out.println(" <div id='cb' style='width:400px; height:400px; overflow-y:scroll; scroll:auto; border: 5px solid red; border-radius:4px; display:inline-block;  color:red; background-color:black; font-size:16px;   ' ></div><br>    <input type=text id=msg placeholder='Message' style='border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:12px;  font-size:16px; padding:5px 22px;'  /><input type=submit value=send onclick='sendMessage();' style='border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:12px;  font-size:16px; padding:5px 12px; '  /> <input type=button value='Clear Chat' onclick= delchatsession() style='border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:12px;  font-size:16px; padding:5px 12px; '/> </center>  <button  onclick='goBack()' style='border: 3px solid orangered; border-radius:20px; display:inline-block; text-align:center; color:orangered; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; ' >Back</button></body>");
%>
  </html>
