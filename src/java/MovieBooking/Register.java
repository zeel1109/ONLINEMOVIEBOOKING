/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MovieBooking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zeelhiteshbhaigondaliya
 */
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Retrieve form parameters
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");

        // Backend validation
        if (!name.matches("[A-Za-z\\s]+")) {
            alert(response, "Name can only contain letters.");
            return;
        }

        if (!contact.matches("^[6-9]\\d{9}$")) {
            alert(response, "Contact number must be 10 digits and not a repetitive sequence.");
            return;
        }

        if (!email.matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z][a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$")) {
            alert(response, "Please enter a valid email address.");
            return;
        }

        if (!password.equals(confirmPassword)) {
            alert(response, "Passwords do not match.");
            return;
        }

        // Register the user
        boolean registrationSuccess = registerUser(name, contact, email, password);

        if (registrationSuccess) {
            alert(response, "User registered successfully!");
        } else {
            alert(response, "User registration failed.");
        }
    }

    private boolean registerUser(String name, String contact, String email, String password) {
        boolean status = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the MySQL database
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/MovieBooking", "root", "rootroot");

            // SQL query to insert data into the Register table
            String query = "INSERT INTO Register (name, contact, email, password) VALUES (?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(query);

            // Set the values for the prepared statement from the form data
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, contact);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, password);

            // Execute the query and check if insertion is successful
            status = preparedStatement.executeUpdate() > 0;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return status;
    }

    private void alert(HttpServletResponse response, String message) throws IOException {
        response.getWriter().println("<script type=\"text/javascript\">");
        response.getWriter().println("alert('" + message + "');");
        response.getWriter().println("window.location.href='sign_in.html';");
        response.getWriter().println("</script>");
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
