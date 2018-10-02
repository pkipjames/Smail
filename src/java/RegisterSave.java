

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RegisterSave", urlPatterns = {"/RegisterSave"})
public class RegisterSave extends HttpServlet {

  
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String a = request.getParameter("Username");
        String b = request.getParameter("password");
        String c = request.getParameter("gender");
        String d = request.getParameter("mob");
        String e = request.getParameter("mail");
        String f = request.getParameter("country");
        String v =("DU.jpg");
        {
            
       if(!a.equals("")&&!b.equals("")&&!c.equals("")&&!d.equals("")&&!e.equals("")&&!equals("")) 
       
  try {
              Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul","root","");
            
 
 
           PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into registeration (username,Password,Gender,mobile_no,email,photo,country)values(?,?,?,?,?,?,?)");
            ps.setString(1,a);
            ps.setString(2,b);
            ps.setString(3,c);
            ps.setString(4,d);
            ps.setString(5,e);
            ps.setString(6,v);
            ps.setString(7,f);
            int i = ps.executeUpdate();
 if(i>1)
     out.print("you are registered now");
    response.sendRedirect("rahul2.jsp");
               } 
          catch (Exception e2) {
            out.println(e2);            
            out.close();
        }
    
      
    else
        { 
               out.print("<h1>Wrong data in<h1>");
             response.sendRedirect("rahul3.jsp");
           
              
    }
    }
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

