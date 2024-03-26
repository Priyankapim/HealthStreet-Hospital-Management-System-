package com.admin.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.SpecialistDAO;
import com.db.DBConnect;

@WebServlet("/addSpecialist")

public class AddSpecialist extends HttpServlet {	
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {			
			String specialistName = req.getParameter("specialistName");			
			SpecialistDAO specialistDAO = new SpecialistDAO(DBConnect.getConn());
			boolean f = specialistDAO.addSpecialist(specialistName);			
			HttpSession session = req.getSession();			
			if (f==true) {
				session.setAttribute("successMsg", "Specialist added Successfully.");
				resp.sendRedirect("admin/index.jsp");
				
			} else {
				session.setAttribute("errorMsg", "Something went wrong on server");
				resp.sendRedirect("admin/index.jsp");
			}
		}
}
