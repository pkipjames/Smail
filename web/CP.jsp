
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function valid()
            {
                np = document.getElementById("np").value ;
                cnp = document.getElementById("cnp").value ; 
                if(np!=cnp)
                    {
                        alert("New password does not match");
                        return(false);
                       }
                       else
                           {
                               return(true);
                           }
                            }
            </script>
    </head>
    <body background="c.jpg">
    <center>
            
        <h1 style="background-color:white; position-absolutemargin : auto; margin-left:6%; border-bottom:15px solid black; border-radius:10px; box-size:border-box; width:40%;" ><font  color ="black">Change-password</font></h1>
    <fieldset style="width:40% ; height:60%; background-color: white; border-bottom:40px solid black; position-absolutemargin : auto;margin-left:6%; margin-top:4%; border-radius:40px ;border-width:5;  border-right-color:black; border-top-color:black; border-left-color:black; "  >     
 <legend style="background-color:whitesmoke;"><font color="black" border="1"><b>Only For Registered Users</b></legend>
        <form   border="2"  action="Change.jsp" method="post"  onsubmit="return(valid())">

       
        
        <table style="width:100%">
          
         <tr>
            <td><h2><small><u><font color="black">CURRENT-PASSWORD</font></u></small></h2></td>
            <td><input placeholder="CURRENT-PASSWORD" type="password" name="p" id="p" required /></td>
        </tr>
        
         <tr>
            <td><h2><small><u><font color="black">NEW-PASSWORD</font></u></small></h2></td>
            <td><input placeholder="NEW-PASSWORD" type="Password" name="np" id="np" required /></td>
        </tr>
        
        <tr>
            <td><h2><small><u><font color="black">CONFIRM-NEW-PASSWORD</font></u></small></h2></td>
            <td><input placeholder="CONFIRM-PASSWORD" type="password" name="cnp" id="cnp" required /></td>
        </tr>
        <tr>
            <td> <input type="submit"  value="Change Password" id="submit" style="border: 4px solid black; border-radius:10px; display:inline-block; text-align:center; color:black; font-size:12px;  font-size:16px; padding:15px 32px;     " /></td>
            <td> <input type="Reset"  value="Reset" style="border: 4px solid black; border-radius:10px; display:inline-block; text-align:center; color:black; font-size:12px;  font-size:16px; padding:15px 32px;     " /></td>
        </tr>   
           
        </table>
</form>      
</fieldset>
 </center>
  
<div>
    <a href = "profile.jsp" ><input type="button"  value="Home" style="border: 4px solid black; border-radius:10px; display:inline-block; text-align:center; color:black; font-size:12px;  font-size:16px; padding:10px 15px;    border-radius:20px; "  /></a>
</div>
</body>
</html>
