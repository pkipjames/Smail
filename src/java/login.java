
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
import javax.servlet.http.HttpSession;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection con;
        PreparedStatement pstm,pstm2,pstm3;
        String a = request.getParameter("id");
        String b = request.getParameter("Password");
        try {  
              Class.forName("com.mysql.jdbc.Driver");
           con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
       pstm = (PreparedStatement) con.prepareStatement("select * from registeration where email=? and password=?");
       pstm.setString(1,a);
       pstm.setString(2,b);
       ResultSet rs = pstm.executeQuery();
       if(rs.next())
            {
              String unm,pic;
              unm = rs.getString(1);
              pic = rs.getString(7);
              pstm2=(PreparedStatement) con.prepareStatement("delete from CurrentUser where id=?");// Jisne logout nhi kiya uska record delete ho jaegya 
              pstm2.setString(1,a);
              pstm2.executeUpdate();
              pstm3=(PreparedStatement) con.prepareStatement("insert into CurrentUser values(?,?,?)");
              pstm3.setString(1,a);
              pstm3.setString(2,unm);
              pstm3.setString(3,pic);
              pstm3.executeUpdate();
         HttpSession session=request.getSession();    
              session.setAttribute("uid",a);
               session.setAttribute("pwd",b);
               session.setAttribute("pic",pic);
               session.setAttribute("unm",unm);
            
            response.sendRedirect("userhome.jsp"); 
    }  
    else{  
        out.print("Sorry username or password error");  
       response.sendRedirect("rahul3.jsp"); 
    }  
          
    } 
        catch(Exception e) 
                {            
            out.println(e.toString());
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
   @Override
    public String getServletInfo() {
        return "Short description";
    }
}
