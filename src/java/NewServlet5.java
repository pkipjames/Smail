

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "NewServlet5", urlPatterns = {"/NewServlet5"})
public class NewServlet5 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         Connection con;
        PreparedStatement pstm;
        ResultSet rs;
        String a,b,c,d;
        
        try 
        {
          
              Class.forName("com.mysql.jdbc.Driver");
             con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
              pstm = (PreparedStatement) con.prepareStatement("Select*from contact ");
              rs = pstm.executeQuery();
              out.print("<body bgcolor = black>");
              out.print("<table border = 2 align = center bgcolor=white font-color:white width=100%><tr><th>Email</th><th>Contact-1</th><th>Contact-2</th><th>Contact-3</th></tr>");
              while(rs.next())
              {
                  a = rs.getString(1);
                  b = rs.getString(2);
                  c = rs.getString(3);
                  d = rs.getString(4);
                 
               
                  out.print("<tr>");
                  out.print("<td>"+a+"</td>");
                  out.print("<td>"+b+"</td>");
                  out.print("<td>"+c+"</td>");
                  out.print("<td>"+d+"</td>");
                 
                  out.print("</tr>");
              }
              out.print("</body>");
              rs.close(); 
              con.close();
        }
        catch(Exception ae)
        {
            out.print(ae.toString());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
