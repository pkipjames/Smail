<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            var chatwithuser
            function onlineusers()
            {
                
                x=new XMLHttpRequest()
                x.onreadystatechange=function()
                {
                    if(x.readyState==4 && x.status==200)
                        {
                            document.getElementById("ulist1").innerHTML=x.responseText;
                   
                   }
                }
                
                x.open("GET","GetOnlineUsers.jsp",true);
                x.send();
                 if(chatwithuser!=null)
                {
                y=new XMLHttpRequest();
                y.onreadystatechange=function()
                {
                    if(y.readyState==4 && y.status==200)
                        {
                            document.getElementById("cb").innerHTML=y.responseText;
                        }
                }
                y.open("GET","GetChatSession.jsp?chatwithuser="+chatwithuser,true);
                y.send();
                
                }
              setTimeout(onlineusers,1500);
            }
           
        
          function Fun()
          {
            
              i = document.getElementById("ulist").selectedIndex;
              uid=document.getElementById("ulist").options[i].value;
              chatwithuser = uid;
              document.getElementById("cbb").innerHTML="<h2>"+chatwithuser+"</h2>" ;
          
              
  
                z = new XMLHttpRequest();
                z.open("GET","GetUserPic.jsp?chatwithuser="+chatwithuser,true);
              
                 z.onreadystatechange=function()
              {   if(z.readyState==4 && z.status==200)
                  document.getElementById("pic").innerHTML=z.responseText;
                         }
              z.send();
            }
            function sendMessage()
            {
                msg=document.getElementById("msg").value;
                tuid = chatwithuser;
              
                x=new XMLHttpRequest();
                x.open("GET","SaveChatMsg.jsp?tuid="+tuid+"&msg="+msg,true);
                x.onreadystatechange=function()
                {
                    
                }
                x.send();
                
            }
            function delchatsession()
            {
                x=new XMLHttpRequest();
                x.open("GET","delChat.jsp?chatwithuser="+chatwithuser,true);
                x.onreadystatechange=function()
                {
                    if(x.readyState==4 && x.status==200)
                        document.getElementById("cb").innerHTML="";
                }
                x.send();

          }
           function clear()
           {
               if(document.getElementById){
                   document.chatform.msg.reset();
               }
           }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="onlineusers()" background="red3.jpg;" >
        <table  width="100%" >
            <tr>
                <td align="center"><h3 style="border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:12px;  font-size:16px; padding:5px 12px; " > Online Users</h3> <br />
                <div id="ulist1" style=" border: 5px solid red; border-radius:10px; display:inline-block;  color:red; background-color:black; font-size:16px;   " ><select id="ulist" size=15 onchange="Fun();"   ></select></div></td>
                <td><h2  id="cbb" > Chat Box </h2>
                    <div id="cb" style="width:400px; height:400px; overflow-y:scroll; scroll:auto; border: 5px solid red; border-radius:4px; display:inline-block;  color:red; background-color:black; font-size:16px;   " ></div><br>
            <from name="chatform" id="chatform" onsubmit="clear()">
                    <input type=text id=msg placeholder="Message" style="border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:12px;  font-size:16px; padding:5px 22px;"  />
                     <input type=submit value=send onclick="sendMessage();" style="border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:12px;  font-size:16px; padding:5px 12px; "  />
                     <input type=button value="Clear Chat" onclick= delchatsession() style="border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:12px;  font-size:16px; padding:5px 12px; " />
                     </form>     
                </td>
                     
                <td align="center"><div id="pic" > <img src="DU.jpg"  height="400" width="400" /></div> </td>
                   </tr>
        </table>
    <br/>
    <center>
        <a href="userhome.jsp"> <input type=button value="Home"  style=" border: 4px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:12px;  font-size:16px; padding:5px 12px; " /></a>
 </center>               
    </body>
</html>
