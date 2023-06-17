
import java.sql.*;
import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		try {

		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		PreparedStatement p= LoginDOA.dbConnect(); 
		p.setString(1,email);
		p.setString(2, pass);
		ResultSet r=p.executeQuery();
		HttpSession session =request.getSession();
		if(r.next()!=false)
		{
			
			session.setAttribute("fName", r.getString(4));
			session.setAttribute("mName", r.getString(5));
			session.setAttribute("lName", r.getString(6));
			session.setAttribute("Anumber", r.getLong(1));
			session.setAttribute("email", r.getString(3));
			session.setAttribute("status", r.getInt(7));
			
			response.sendRedirect("AccountPage.jsp");
		}
		else
		{
			session.setAttribute("msg", "Incorrect Credentials!!!");
			response.sendRedirect("login.jsp");
		}
	}catch(Exception e) {
		out.println(e);
	}
	}
}