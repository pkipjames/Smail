

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


@WebServlet(name = "NewServlet3", urlPatterns = {"/NewServlet3"})
public class NewServlet3 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection con;
        PreparedStatement pstm = null;
        ResultSet rs;
        String a,b,c,d,e ,f;
        
        try 
        { 
            
              Class.forName("com.mysql.jdbc.Driver");
             con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
              pstm = (PreparedStatement) con.prepareStatement("Select*from emails");
              rs = pstm.executeQuery();
              out.print("<body bgcolor = black>");
              out.print("<table border = 2 align = center bgcolor=white font-color:white width=100%><tr><th>Email-no</th><th>Email-Date</th><th>From_Eamil_id</th><th>To_Email_id</th><th>Subject</th><th>Message</th></tr>");
              while(rs.next())
              {
                  a = rs.getString(1);
                  b = rs.getString(2);
                  c = rs.getString(3);
                  d = rs.getString(4);
                  e = rs.getString(5);
                  f = rs.getString(6);
                  out.print("<tr>");
                  out.print("<td>"+a+"</td>");
                  out.print("<td>"+b+"</td>");
                  out.print("<td>"+c+"</td>");
                  out.print("<td>"+d+"</td>"); 
                  out.print("<td>"+e+"</td>");
                  out.print("<td align=center>"+f+"</td>");
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
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
