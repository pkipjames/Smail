

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
    <body>
        <%
        Connection con;
        PreparedStatement pstm;
        ResultSet rs;
        String id,pic;
        try{
            id=request.getParameter("chatwithuser");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("select*from registeration where email=?");
            pstm.setString(1,id);
            rs=pstm.executeQuery();
            rs.next();
            pic=rs.getString(7);
           out.println("<img src='"+pic+"' width=400 height=400 />");
           
            }
        catch(Exception e)
       {
            out.println(e.toString());
        }
        
        %>
    </body>
</html>
