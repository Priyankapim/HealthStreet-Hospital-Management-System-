
package com.user_servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.db.DBConnect;
import com.entity.Appointment;

@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet{

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    // Get parameters from the request
    String userIdParam = req.getParameter("userId");
    String doctorIdParam = req.getParameter("doctorNameSelect");

    // Check if parameters are not null or empty
    if (userIdParam != null && !userIdParam.isEmpty() && doctorIdParam != null && !doctorIdParam.isEmpty()) {
        // Parse parameters to integers
        int userId = Integer.parseInt(userIdParam);
        int doctorId = Integer.parseInt(doctorIdParam);

        // Get other parameters
        String fullName = req.getParameter("fullName");
        String gender = req.getParameter("gender");
        String age = req.getParameter("age");
        String appointmentDate = req.getParameter("appoint_Date");
        String email = req.getParameter("email");
        String phone = req.getParameter("phno");
        String diseases = req.getParameter("diseases");
        String address = req.getParameter("address");

        // Create Appointment object
        Appointment appointment = new Appointment(userId, fullName, gender, age, appointmentDate, email, phone, diseases, doctorId, address, "Pending");

        // Create DAO instance and add appointment
        AppointmentDAO appointmentDAO = new AppointmentDAO(DBConnect.getConn());
        boolean f = appointmentDAO.addAppointment(appointment);

        // Redirect based on result
        HttpSession session = req.getSession();
        if (f) {
            session.setAttribute("successMsg", "Appointment is recorded Successfully.");
            resp.sendRedirect("user_appointment.jsp");
        } else {
            session.setAttribute("errorMsg", "Something went wrong on server!");
            resp.sendRedirect("user_appointment.jsp");
        }
    } else {
        // Handle null or empty parameters
        HttpSession session = req.getSession();
        session.setAttribute("errorMsg", "Invalid user ID or doctor ID!");
        resp.sendRedirect("user_appointment.jsp");
    }
}
}


