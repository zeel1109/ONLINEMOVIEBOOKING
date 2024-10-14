/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MovieBooking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author zeelhiteshbhaigondaliya
 */
public class Login extends HttpServlet {

    // JDBC URL, username, and password of MySQL server
    private static final String DB_URL = "jdbc:mysql://localhost:3306/MovieBooking";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "rootroot";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get email and password from the form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Print the values received
        System.out.println("Received email: " + email);
        System.out.println("Received password: " + password);

        // Check if the email and password are valid
         String userName = checkLogin(email, password);

        // Prepare response in the form of an alert box
        response.setContentType("text/html;charset=UTF-8");
        if (userName != null) {
            // If the login is successful, store the username in session
            HttpSession session = request.getSession();
            session.setAttribute("name", userName);  // Storing username in session

            // Show an alert and redirect to the user page
            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('Login successful! Welcome, " + userName + "!');");
            response.getWriter().println("window.location.href = 'user.jsp';");
            response.getWriter().println("</script>");
        } else {
            // If the login fails, show an alert and stay on the login page
            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('Login failed! Incorrect email or password.');");
            response.getWriter().println("window.location.href = 'sign_in.html';");
            response.getWriter().println("</script>");
        }
    }

    // Method to check login credentials from the database
    private String checkLogin(String email, String password) {
        String userName = null;  // Changed to store the user's name
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL query to check if the email and password match and get the user's name
            String query = "SELECT name FROM Register WHERE email = ? AND password = ?";
            statement = connection.prepareStatement(query);
            statement.setString(1, email);
            statement.setString(2, password);

            System.out.println("Executing query: " + query);

            // Execute the query
            resultSet = statement.executeQuery();

            // If a record is found, login is valid, get the user's name
            if (resultSet.next()) {
                userName = resultSet.getString("name");  // Store the user's name
                System.out.println("Login successful for user: " + userName);
            } else {
                System.out.println("No matching record found for email: " + email);
            }

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error occurred: " + e.getMessage());
            e.printStackTrace();
        } finally {
            // Close database resources
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                System.out.println("Error while closing resources: " + e.getMessage());
                e.printStackTrace();
            }
        }
        return userName;  // Return the username (or null if login failed)
    }
}
