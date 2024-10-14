/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MovieBooking;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zeelhiteshbhaigondaliya
 */
public class demo extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/MovieBooking";
    private static final String JDBC_USER = "root";  // Replace with your MySQL username
    private static final String JDBC_PASSWORD = "rootroot";  // Replace with your MySQL password
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Establish a database connection
        try (PrintWriter out = response.getWriter();
             Connection conn = getConnection()) {
             
            if (conn != null) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet demo</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Database Connection Successful!</h1>");
                out.println("<p>Connected to MySQL database successfully!</p>");
                out.println("</body>");
                out.println("</html>");
            } else {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet demo</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Database Connection Failed!</h1>");
                out.println("<p>Unable to connect to MySQL database.</p>");
                out.println("</body>");
                out.println("</html>");
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database connection error: " + e.getMessage());
        }
    }
    
    // Method to get a connection to the MySQL database
    private Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish the connection
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new SQLException("Failed to connect to MySQL database", e);
        }
        return conn;
    }

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
        return "Servlet that demonstrates MySQL database connection";
    }

}
