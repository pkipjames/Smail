<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compose</title>
    </head>
    <body  background="red3.jpg"  style="background-repeat: no-repeat; ">
         
        <a href ="userhome.jsp" > <button style="border: 3px solid red; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; ">Home</button></a>
    
        <center>
            <h1 style="background-color:red; width:20%; "><b><u><font color="white">SEND E-MAIL</font></u></b></h1>
    
        <fieldset style="background-color:red; border:4px solid black;    width:20%; border-radius:20px;" >
            <legend style="background-color:white; border:4px solid black;"><font color="red">NEW-MAIL</font></legend>
        <form method="post" action="ComposeSave.jsp" >
              <table  width="500"> 
            <tr>
                <td><font color="white"> To:</font></td>
                <td><input type="text" name="toeid" id="toeid" Placeholder="Send-To" pattern=".+@smail.com" style="border: 2px solid black; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  font-size:16px; padding:3px 12px; " required /></td></tr>
            <tr>
            <td> <font color="white">Subject:</font></td>
            <td><input type="text" name="sub" placeholder="Subject"  style="border: 2px solid black; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  font-size:16px; padding:3px 12px; " /></td><br/>
              </tr>
              <tr><td><br/></td></tr>
              <tr>
            <td><font color="white"> Message:</font></td>
            <td><textarea rows="10" cols="30" name="msg" placeholder="Message" style="border: 2px solid black; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; " ></textarea>
                
                
               </td>
              </tr>
              <tr><td><br/></td></tr>
              <tr>
                 
                <td> <input type="submit" value="Send" style="border: 2px solid black; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; " /></td>
                <td> <input type="reset" value="Reset"  style="border: 2px solid black; border-radius:20px; display:inline-block; text-align:center; color:red; background-color:white; font-size:12px;  font-size:16px; padding:5px 12px; " /></td>
            </tr>
              </table>
           </form>
    </fieldset>
          
   
   </body>
</html>
