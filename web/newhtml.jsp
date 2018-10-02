<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<script>
            function valid()
            {
                p = document.getElementById("p").value ;
                cp = document.getElementById("cp").value ; 
                if(p!=cp)
                    {
                        alert("Password do not match");
                        return(false);
                       }
                       else
                           {
                               return(true);
                           }
                   
                    }
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
            </script>
</head>
<body background="red.jpg" style="background-repeat:no-repeat ; background-color: #F9F9F9; background-position: center top;
      background-size:100%; background-repeat:repeat; background-blend-mode:multiply;
        text-shadow: #FFFFFF 0px 1px 0px;
        font-family: Georgia Times serif;
        -webkit-font-smoothing: antialiased;">
    <div class="loader"></div>
    <header>
        <center>
          <h1 align=center style="background-color:#FF4136;  position-absolutemargin : auto; margin-left:2%; border-bottom:20px solid #111111; border-radius:30px; box-size:border-box; width:42%;"><i><font color="#FFFFFF "><u>SINGLA&nbsp;&nbsp;E-MAIL&nbsp;&nbsp;SERVICE&nbsp;&nbsp;KAITHAL<br/></u></font></i></h1>
           
    <marquee width="80%" bgcolor="#FFFFFF " scrollamount="10" style="background-color:transparent; position-absolutemargin : auto; margin-left:0%; margin-right:66%; border-radius:30px; box-size:border-box; width:30%;"><h3><b><font color = "#FFFFFF "><u color:#111111;">welcome to our website_________________ welcome to our website________________________ welcome to our website ______________________________welcome to our website_________________________welcome to our website_________________________welcome to our website ____________________________welcome to our website____________________________welcome to our website______________________________welcome to our website_____________________________welcome to our website ____________________________ welcome to our website</u></b></font></h3></marquee>
          
        </center>
    <br/><br/>
</header>
    <table width="100%">
        
        <tr>
            <td align="center">
                 <h1 style="background-color:#FF4136; position-absolutemargin : auto; margin-left:1%; border-bottom:15px solid #111111; border-radius:10px; box-size:border-box; width:100%; text-align:center; " ><font  align ="center" color ="#FFFFFF ">Register</font></h1>
 
<fieldset style=" width:30% ; border-bottom:15px solid #FF4136 ; border-left-color:#FF4136 ;
        border-right-color: #FF4136; border-top-color:#FF4136; 
        border-radius:20px ;border-width:6px; position:absolute ;
            margin-left:0%;
          margin-top:0%;
            background-color:#111111 ;">
    
<legend style="background-color:#111111; border: 2px solid #FF4136 ; "><b><font color="#FF4136">For Register</font></b></legend>

<form align="left-side" method = "post" action = "RegisterSave" onsubmit = "return(valid())">
        
<table align="left" >

<tr>
<td align="center" width="15%" ><h2 align="middle"><font color="blue">Username</font></h2></td><td>  </td>
<td align="center" width="15%" ><input type="text" placeholder="Username" name="Username"  requi#FF4136  style="border: 4px solid #FF4136; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 22px;" /></td>
</tr>
<tr>
<td align="center" width="15%" ><h2 align="middle"><font color="blue">Password</font></h2></td><td>  </td>
<td align="center" width="15%" ><input type="password" placeholder="Password" style="border: 4px solid #FF4136; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 22px; "  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="password" id="p" requi#FF4136  /><br/></td>
</tr>
 <tr>
            <td width="15%" ><h2><small><font color="BLUE">Confirm-password</font></small></h2></td><td>  </td>
            <td width="15%" ><input placeholder="Confirm-Password" type="password" style="border: 4px solid #FF4136; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 22px; " name="cp" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="cp" requi#FF4136  /></td>
</tr>
        
<tr>
    <td align="right" width="15%" ><h2 align="middle"><font color="blue" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gender</font></h2></td> <td>  </td> 
    <td align="center" width="15%" ><font color="#FF4136 ">*compulsory</font></td>
</tr>
<tr>
<td align="left" width="15%" ><input type="radio" name="gender" value="Male" align="left" requi#FF4136  /><sub><H2 align="left"><font color="#FF4136 " >Male</font></h2></sub></td>
<td align="left" width="15%" ><input type="radio" name="gender" value="Female" align="right" requi#FF4136  /><sub><h2 align="right"><font color= #FF4136  >Female</font></h2></sub></td>
</tr>
<tr>
<td align="center" width="15%" ><h2><font color="blue">Mobile.No</font></h2></td><td>  </td>
<td align="center" width="15%" ><input  type="text" placeholder="Mobile.no" name="mob"  pattern="[0-9]{10}" style="border: 4px solid #FF4136; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 22px; " requi#FF4136  /></td>
</tr>
<tr>
<td align="center" width="15%"><h2><font color="blue">E-Mail</font></h2></td><td>  </td>
<td align="center" width="15%"><input type="text" placeholder="Email" pattern=".+@smail.com" size="20" name="mail" id="mail" requi#FF4136  style="border: 4px solid #FF4136; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 22px;" /></td>
<td><input type=button value="Check" onclick="fun()" style="  cursor:pointer; border: 2px solid #FF4136; border-radius:10px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:6px;  padding:3px 11px;" /><span id="res" ><span></td>
</tr>
<tr>
    <td align="center"><h2><font color="blue">Country</font></h2></td><td>  </td>
<td align="center"> <select name=country placeholder="Country" id="coun" requi#FF4136  style="  cursor:pointer; border: 4px solid #FF4136; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:16px;  padding:6px 40px; " >
<option disabled selected value>Options</option>
<option>INDIA</option>
<option>USA</option>
<option>JAPAN</option>
<option>UK</option>
<option>Africa</option>
<option>Pakistan</option>
<option>Bangladesh</option>
<option>Australia</option>
<option>New-Zeland</option>
<option>China</option>
</select>
</td>
</tr>

<tr>
  <td align="center" width="15%" > <input type="Submit" requi#FF4136  value="Submit" style="   cursor:pointer; border: 2px solid #FF4136; border-radius:10px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 22px;     " /></td>
 <td>  </td> <td align="center" width="15%" ><input type="Reset"  requi#FF4136  value="Reset" style="   cursor:pointer; border: 2px solid #FF4136; display:inline-block; border-radius:10px; text-align:center; background-color:#111111;  color:#FF4136 ; font-size:12px;  font-size:16px; padding:5px 22px;     " /></td>
</tr>
<tr><td><br/></td></tr>
</table>
</form>  
</fieldset>
            </td><td>
 <table align="right" width="30%">   
<tr>
<td>   
<fieldset style="align:right-top; width:8%; background-color: #FF4136; border-color:#111111;border-width:6px; border-radius:30px" >
<legend style="align:right; border:2px solid #111111; background-color: #111111; "><font color="#FF4136">Only &nbsp;&nbsp;for &nbsp;&nbsp; Admin</font></legend>
<form   border="2"  action="Admin" method="post" >
    <table>
         <tr>
            <td><br/></td>
        </tr>
        <tr>
            <td><font color="#FFFFFF ">User-Id</bold></font></td>
        <td><input type="text" placeholder="User-id" name="id" style="border: 2px solid #FFFFFF ; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 22px; " requi#FF4136  /></td>
        </tr>
        <tr>
            <td><br/></td>
        </tr>
        <tr>
            <td><font color="#FFFFFF ">Password</font></td>
            
            <td><input type="password" placeholder="Password" name="Password" style="border: 2px solid #FFFFFF ; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 22px;"  requi#FF4136  /></td>
            
       </tr>
        <tr>
            <td><br/></td>
        </tr>
       <tr>
            <td align="center"> <input type="submit"  value="Login" style="  cursor:pointer; border: 2px solid #FFFFFF ; border-radius:10px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 12px; " /> </td>
            <td align="center"><input type="Reset"  value="Reset" style="  cursor:pointer; border: 2px solid #FFFFFF ; border-radius:10px; display:inline-block; text-align:center;background-color:#111111;  color:#FF4136 ; font-size:12px;  font-size:16px; padding:5px 12px;     " /></td>
        </tr>
    </table>
    </form>
</fieldset>
</td>
<td>
       
    <a href="login.jsp"><input type="button" value="Login" style="  cursor:pointer; border: 4px solid #FF4136; border-radius:10px; display:inline-block; text-align:center; background-color:#111111; color:#FF4136;  font-size:50px; padding:4px 30px;     " /></a>
</td>     
</tr>        
</table>
    
  
    
             

    </tr>
    </table>
 <footer style="position:fixed; clear:both; left:0; bottom:0; right:0; width:100%;  " >
    <table width="100%" >
            <tr>
                <td align="ceneter"><font  style="border: 2px solid #FFFFFF ; padding:5px 60px ; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111;   font-size:16px;  ">Mobile-no : 8950410672</font></td>
                <td align="center"><font   style="border: 2px solid #FFFFFF ; padding:5px 60px ; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111;   font-size:16px;  ">Facebook : singla/fb/1999</font></td>
                <td align="center"><font   style="border: 2px solid #FFFFFF ; padding:5px 60px ; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111;   font-size:16px;  ">Twitter handle: @Singla1999</font></td>
           
                <td>
                   
                     <form method="get" action="http://www.google.com/search"  >
                    <input type="search" id="mysearch" name="q" placeholder="search" requi#FF4136  alt="www.google.com/search" style="border:2px solid #FFFFFF  ; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px; padding:5px 22px;" />
               <input type="submit" value="Search" style="  cursor:pointer; border: 2px solid #FFFFFF ; border-radius:20px; display:inline-block; text-align:center; color:#FF4136 ; background-color:#111111; font-size:12px;  font-size:16px;  " />
            </form>
                    
                </td> 
            </tr>
        </table>

 </footer>

    
     
</body>
</html>