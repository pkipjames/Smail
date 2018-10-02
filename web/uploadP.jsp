

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1><font color="red">Update-Profile-Photo</font></h1>
        <fieldset style="width:30%;">
        <form method="post" action="PS.jsp"  enctype="multipart/form-data" >
            <table><tr>
                    <td align="center"><font color="blue">User-Password</font></td> 
                    <td><input type="text" name="pn"  required /></td>
                   </tr>
             <tr>
                   <td align="center"><font color="blue">Profile-Photo</font></td> 
                    <td colspan="2"><input type="file" name="pic" rquired accept="image/*"/></td>
                    
               </tr>
              
               <tr>
                    <td><input type="submit" name="submit" value="submit" /></td>
                   </tr>   
  </table>
 </form>
        </fieldset>
    </center>
        <a href ="profile.jsp" > <button style="border: 3px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; ">Home</button></a>
    
 </body>
</html>
