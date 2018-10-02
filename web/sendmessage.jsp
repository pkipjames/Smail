
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         try
                                 {
        Connection con;
        PreparedStatement pstm;
      String feid = session.getAttribute("a")+"";
             Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Select*from contact where email=?");
           pstm.setString(1,feid);
          java.sql.ResultSet  rs = pstm.executeQuery();
            rs.next();
            int i=2;
            while(i<=4)
                           {
                String ca = rs.getString(i);
                                   
               String sub= "Emergency";
               String msg = "I am in problem .I need help";
              String edt ;
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
            pstm.setString(2,feid);
            pstm.setString(3,ca);
            pstm.setString(4,sub);
            pstm.setString(5,msg);
            pstm.executeUpdate();
            pstm=con.prepareStatement("Insert into emails2(EmailDate,FromEmailId,ToEmailId,Subject,Message) values(?,?,?,?,?)");
            pstm.setString(1,edt);
            pstm.setString(2,feid);
            pstm.setString(3,ca);
            pstm.setString(4,sub);
            pstm.setString(5,msg);
            pstm.executeUpdate();
            con.close();
                 i++;      
            }
            out.println("<h1>Message Sent</h1>");
            out.println("<a href=userhome.jsp><button>Back</button></a>");
                                         
            } catch(Exception e)
                                       {
out.println(e.toString());
            }            
        %>
    </body>
</html>
