

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
         function fun()
                 {
                     mail = document.getElementById("mail").value;
                     x=new XMLHttpRequest();
                     x.onreadystatechange=function()
                     
                   {     if(x.readyState==4 && x.status ==200)
                          document.getElementById("res").innerHTML=x.responseText;   
                           
                           else if(x.readyState==3 && x.status ==200)
                             
                                 document.getElementById("res").innerHTML="<font color=blue>Processing</font>";
                             }
                             x.open("GET","checkuser.jsp?mail="+mail,true);
                             x.send();
                 }
                 function funb()
                 {
                     mail = document.getElementById("b").value;
                     x=new XMLHttpRequest();
                     x.onreadystatechange=function()
                     
                   {     if(x.readyState==4 && x.status ==200)
                          document.getElementById("resu").innerHTML=x.responseText;   
                           
                           else if(x.readyState==3 && x.status ==200)
                             
                                 document.getElementById("resu").innerHTML="<font color=blue>Processing</font>";
                             }
                             x.open("GET","checkuser.jsp?mail="+mail,true);
                             x.send();
                 }
                 function func()
                 {
                     mail = document.getElementById("c").value;
                     x=new XMLHttpRequest();
                     x.onreadystatechange=function()
                     
                   {     if(x.readyState==4 && x.status ==200)
                          document.getElementById("result").innerHTML=x.responseText;   
                           
                           else if(x.readyState==3 && x.status ==200)
                             
                                 document.getElementById("result").innerHTML="<font color=blue>Processing</font>";
                             }
                             x.open("GET","checkuser.jsp?mail="+mail,true);
                             x.send();
                 }
                  
                  
                            </script>          
    </head>
    <body>
    <center>
        <h1><font color="blue">Update-Contact</font></h1>
        <fieldset style="width:20%">
            
            <form method="post" action="contacts.jsp" >
                <table>
                    <tr>
                        <td> <h2><font color="red">Contact-1</font></h2></td>
                        <td><h2><input type="mail" id="mail" name="a"   pattern=".+@smail.com" placeholder="E-mail" required /></h2></td>
                        <td><input type=button value="Check" onclick="fun()" style="border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:6px;  padding:3px 11px;" /><span id="res" ></span></td>

                    </tr>
                    <tr>
                        <td> <h2><font color="red">Contact-2</font></h2></td>
                        <td><h2><input type="mail" id="b" name="b" pattern=".+@smail.com" placeholder="E-mail" required/></h2></td>
                        <td><input type=button value="Check" onclick="funb()" style="border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:6px;  padding:3px 11px;" /><span id="resu" ></span></td>

                    </tr>
                    <tr>
                        <td> <h2><font color="red">Contact-3</font></h2></td>
                        <td><h2><input type="mail" id="c" name="c"   pattern=".+@smail.com" placeholder="E-mail" required /></h2></td>
                        <td><input type=button value="Check" onclick="func()" style="border: 2px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:black; font-size:6px;  padding:3px 11px;" /><span id="result" ></span></td>

                    </tr>
                    
                    <tr>
                         <td><input type="submit" value="submit" /></td>
                        <td><input type="reset" value="reset" /></td>
                    </tr>
                    
                    
                </table>
                
            </form>
        </fieldset>
    </center>    
    
    <a href="userhome.jsp"><button align="center" >Home </button> </a>
       
       
</body>
</html>
