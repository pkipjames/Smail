

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "NewServlet2", urlPatterns = {"/NewServlet2"})
public class NewServlet2 extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection con;
        PreparedStatement pstm = null;
        ResultSet rs;
        String a,b,c,d,e ,f,g,i;
        try 
        { 
            
              Class.forName("com.mysql.jdbc.Driver");
             con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
              pstm = (PreparedStatement) con.prepareStatement("Select*from Registeration");
              rs = pstm.executeQuery();
              out.print("<body bgcolor = black>");
              out.print("<table border = 2 align = center bgcolor=white font-color:white width=100%><tr><th>Username</th><th>Password</th><th>Gender</th><th>Mobile_no</th><th>Mail</th><th>Registeration_no</th><th>Photo</th><th>Country</th></tr>");
              while(rs.next())
              {
                  a = rs.getString(1);
                  b = rs.getString(2);
                  c = rs.getString(3);
                  d = rs.getString(4);
                  e = rs.getString(5);
                  f = rs.getString(6);
                  g = rs.getString(7);
                   i = rs.getString(8);
                  out.print("<tr>");
                  out.print("<td>"+a+"</td>");
                  out.print("<td>"+b+"</td>");
                  out.print("<td>"+c+"</td>");
                  out.print("<td>"+d+"</td>"); 
                  out.print("<td>"+e+"</td>");
                  out.print("<td align=center>"+f+"</td>");
                  out.print("<td>"+g+"</td>");
                   out.print("<td>"+i+"</td>");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(NewServlet2.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NewServlet2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(NewServlet2.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NewServlet2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

