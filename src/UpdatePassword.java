

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;


public class UpdatePassword extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try
		{
		Connection c= ForgotPasswordDOA.dbConnect();
		String pass=request.getParameter("newpwd");
		String cpass=request.getParameter("cnfpwd" );
		Long an= (long)session.getAttribute("acc");
		if(pass.equals(cpass))
		{
		PreparedStatement st = c.prepareStatement("update register set Password=? where Account_Number=?");
		st.setString(1, pass);
		st.setLong(2, an);
		st.execute();
		session.setAttribute("msg", "Password Reset Successfull!!!");
		response.sendRedirect("login.jsp");
		}
		else
		{
			session.setAttribute("msg", "Password and Confirm Password must be same.");
			response.sendRedirect("UpdatePassword.jsp");
		}
		}
		catch(Exception e)
		{
			session.setAttribute("msg", e);
			response.sendRedirect("login.jsp");
		}
		
	}
}
