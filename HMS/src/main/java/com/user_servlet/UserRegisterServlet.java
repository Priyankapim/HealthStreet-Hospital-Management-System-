package com.user_servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegisterServlet extends HttpServlet{
	
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			try {

				// PrintWriter out = resp.getWriter();

				// get all data/value which is coming from signup.jsp page for new User
				// registration
				String fullName = req.getParameter("fullName");
				String email = req.getParameter("email");
				String password = req.getParameter("password");

				// Set all data to User Entity
				User user = new User(fullName, email, password);

				// Create Connection with DB
				UserDAO userDAO = new UserDAO(DBConnect.getConn());
				
				//get session
				HttpSession session = req.getSession();
				

				// call userRegister() and pass user object to insert or save user into DB.
				boolean f = userDAO.userRegister(user); // userRegister() method return boolean type value

				if (f == true) {

					session.setAttribute("successMsg", "Register Successfully");
					resp.sendRedirect("signup.jsp");//which page you want to show this msg
					

				} else {
					
					session.setAttribute("errorMsg", "Something went wrong!");
					resp.sendRedirect("signup.jsp");//which page you want to show this msg
					
					
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		}

	

}
