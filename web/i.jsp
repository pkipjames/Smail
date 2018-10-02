<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Admin login</title>
        
    </head>
    <body>
    <center>
        <h2><font color="red"><u>You are Logined now</u></font></h2>
         <h2><font color="red"><u>Hello Rahul!!</u></font></h2>
    </center>
        <table width="100%" border="4" border-color="black" >
            <tr><td align="center">
        <h1><font color ="blue" >GET INFORMATION ABOUT URERS </font></h1>
        <form  method= "get"  action = "NewServlet2" >
            <input type="image" src="i.jpg" name="fetchdata" alt="submit"/>
        </form>
                </td>
                
                <td align="center">
    <h1><font color ="blue" >GET INFORMATION ABOUT CONTACTS </font></h1>
        <form  method= "get"  action="NewServlet5" >
            <input type="image" src="i.jpg"  name="fetchdata" alt="submit"/>
        </form>
        </td>
            </tr>
            <tr>
                <td align="center">
    <h1><font color ="blue" >GET INFORMATION ABOUT EMAILS </font></h1>
        <form  method= "get"  action = "NewServlet3" >
            <input type="image" src="i.jpg" name="fetchdata" alt="submit"/>
        </form>
        </td>
          <td align="center">
    <h1><font color ="blue" >GET INFORMATION ABOUT EMAILS-2 </font></h1>
        <form  method= "get"  action = "NewServlet4" >
            <input type="image" src="i.jpg" name="fetchdata" alt="submit"/>
        </form>
       
        </tr>
      </table>
    <br/>
      <a href=newhtml.jsp><button>Home</button></a>     
    </body>
</html>
