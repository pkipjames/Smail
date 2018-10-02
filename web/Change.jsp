
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <script>
          function goBack()
            {
                window.history.back();
            }
    </script>
    <body>
        <%
           try
           {
           java.sql.Connection con;
           java.sql.PreparedStatement pstm;
           String a,b,p,np;
           p =  request.getParameter("p");
          np =  request.getParameter("np");
           a = session.getAttribute("uid")+"";
           b = session.getAttribute("pwd")+"";       
     
                             
        if(p.equals(b))
                       {
           Class.forName("com.mysql.jdbc.Driver");
            con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            pstm=con.prepareStatement("Update registeration set password=? where email=? and password=?");
                       
            pstm.setString(1,np);
            pstm.setString(2,a);
            pstm.setString(3,b);
            pstm.executeUpdate();
            con.close();
            out.println("<h1>PASSWORD-CHANGED</h1>");
            out.println("<br/><button onclick='goBack()'>Back</button></a>");
                         }

           else
                             {
               response.sendRedirect("rahul3.jsp");
                             }
           }
                       catch(Exception e)
{
 out.println(e.toString());
}
            %>
    </body>
</html>
