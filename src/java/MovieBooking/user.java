/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MovieBooking;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author zeelhiteshbhaigondaliya
 */
public class user extends HttpServlet {


     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    
         HttpSession session = request.getSession(false);
        
        // Check if the session is valid and has the username attribute
        if (session != null && session.getAttribute("name") != null) {
            String userName = (String) session.getAttribute("name");
            
            // Display the user's name and provide a link to log out
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<html><body>");
            response.getWriter().println("<h1>Welcome, " + userName + "!</h1>");
            response.getWriter().println("<a href='Logout'>Logout</a>");
            response.getWriter().println("</body></html>");
        } else {
            // If session is null or no user logged in, redirect to login page
            response.sendRedirect("sign_in.html");
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
    }// </editor-fold>

}
