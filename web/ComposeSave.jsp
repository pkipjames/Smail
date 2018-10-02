<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compose</title>
    </head>
    <body>
        <%
           try
           {
           java.sql.Connection con;
           java.sql.PreparedStatement pstm;
           String toeid,sub,msg,edt,id;
           toeid = request.getParameter("toeid");
           sub =  request.getParameter("sub");
           msg =  request.getParameter("msg");
           id = session.getAttribute("uid")+"" ;
           java.util.Date dt=new java.util.Date();
           int d,m,y;
           d=dt.getDate();
           m=dt.getMonth()+1;
           y=dt.getYear()+1900;
           edt=y+"-"+m+"-"+d;
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Insert into emails(EmailDate,FromEmailId,ToEmailId,Subject,Message) values(?,?,?,?,?)");
            pstm.setString(1,edt);
            pstm.setString(2,id);
            pstm.setString(3,toeid);
            pstm.setString(4,sub);
            pstm.setString(5,msg);
            pstm.executeUpdate();
            pstm=con.prepareStatement("Insert into emails2(EmailDate,FromEmailId,ToEmailId,Subject,Message) values(?,?,?,?,?)");
            pstm.setString(1,edt);
            pstm.setString(2,id);
            pstm.setString(3,toeid);
            pstm.setString(4,sub);
            pstm.setString(5,msg);
            pstm.executeUpdate();
            con.close();
            out.println("<h1>Message Sent</h1>");
            out.println("<a href=compose.jsp><button>Back</button></a>");
            } catch(Exception e)
                                       {
out.println(e.toString());
            }
            %>
    </body>
</html>
