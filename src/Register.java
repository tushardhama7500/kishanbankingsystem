

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.concurrent.ThreadLocalRandom;

public class Register extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		try {
			PreparedStatement ps=RegisterDOA.dbConnect();
			response.setContentType("text/html");
			String pass=request.getParameter("password");
			String cpass=request.getParameter("cpass");
			if(pass.equals(cpass))
			{
			long acc=(ThreadLocalRandom.current().nextLong(100000000,999999999))*10;
			ps.setLong(1,acc);
			
			ps.setDouble(2,Double.parseDouble(request.getParameter("balance")));
			ps.setString(3,request.getParameter("password"));
			ps.setString(4,request.getParameter("fname"));
			ps.setString(5,request.getParameter("mname"));
			ps.setString(6, request.getParameter("lname"));
			ps.setString(7,request.getParameter("email"));
			ps.setString(8,request.getParameter("dob"));
			ps.setString(9,request.getParameter("acc_type"));
			ps.setInt(10,Integer.parseInt(request.getParameter("status")));
			ps.setLong(11,Long.parseLong(request.getParameter("aadhaar")));
			ps.setString(12,request.getParameter("address"));
			ps.setString(13,request.getParameter("phone"));
			ps.setString(14,request.getParameter("question"));
			ps.setString(15,request.getParameter("answers"));
			ps.execute();
			RequestDispatcher rd= request.getRequestDispatcher("Login");
			rd.include(request,response);
			HttpSession session=request.getSession();
			session.setAttribute("msg", "Successfully Registerd. Your Account Number is "+Long.toString(acc));
			response.sendRedirect("login.jsp");
			}
			else
			{
				HttpSession session=request.getSession();
				session.setAttribute("msg", "Confirm Password and Password must be Same");
				response.sendRedirect("register.jsp");
				
			}
		}
		catch(Exception e)
		{
			HttpSession session=request.getSession();
			session.setAttribute("msg", "Exception Occured. "+e);
			response.sendRedirect("register.jsp");
		}
	}
}
