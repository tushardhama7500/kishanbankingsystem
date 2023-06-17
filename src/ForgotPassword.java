

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ForgotPassword extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		HttpSession session= request.getSession();
		try {
			Connection c= ForgotPasswordDOA.dbConnect();
			PreparedStatement p=  c.prepareStatement("select Account_Number from register where Email=? and DOB=? and Question=? and Answer=? and Account_Number=?");
			p.setString(1, request.getParameter("email"));
			p.setString(2,  request.getParameter("dob"));
			p.setString(3, request.getParameter("question"));
			p.setString(4, request.getParameter("ansr"));
			p.setLong(5, Long.parseLong(request.getParameter("acnm")));
			ResultSet r= p.executeQuery();
			if(r.next())
			{
				
				session.setAttribute("acc", r.getLong(1));
				response.sendRedirect("UpdatePassword.jsp");
			}
			else
			{
				session.setAttribute("msg", "Invalid Credentials!!!");
				response.sendRedirect("forgotpassword.jsp");
			}
			
		} catch (Exception e) {
			session.setAttribute("msg", e);
			response.sendRedirect("forgotpassword.jsp");
		} 
		
	}
}
