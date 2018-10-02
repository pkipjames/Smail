   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sent</title>
    </head>
    <body>
        
        <% 
            String feid=session.getAttribute("uid")+"";
            java.sql.Connection con;
            java.sql.PreparedStatement pstm;
            java.sql.ResultSet rs;
            int eno ;
             Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select * from emails2 where FromEmailId=?");
            pstm.setString(1,feid);
             rs=pstm.executeQuery();
             out.println("<body background=red4.jpg style=background-repeat:no-repeat;>");
             out.println("<center>");
             out.println("<h1><u>SENT-BOX</u></h1>");
             out.println("<form method=post action=del2.jsp >");
             out.println("<table width=100% border=2 bgcolor=white>");
             out.println("<tr><th>Check</th><th>To</th><th>sub</th><th>Date</th></tr>");
                
             while(rs.next())
             { 
                  eno=rs.getInt(1);
                  String edt=rs.getString(2);
                  feid=rs.getString(4);
                 String sub=rs.getString(5);
               out.print("<tr>");
               out.print("<td><input type=checkbox name=cb value="+eno+" /></td>");
               out.println("<td>"+feid+"</td>");
               out.println("<td><a href=showmails2.jsp?eno="+eno+">"+sub+"</a></td>");
               out.println("<td>"+edt+"</td>");
               out.println("</tr>");
               out.println("<br/>");
          }
                 out.println("</tr></table>");
                 out.println("<br/><br/><br/><input type=submit value=Delete />");
                  out.println("</form>");
                   out.print("</center>");
                     out.print("</body>");
             rs.close();
             con.close();
             

            %>
    <left>
        <a href ="userhome.jsp" > <button>Home</button></a>
    </left>
    </body>
</html>
