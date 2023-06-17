

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Admin extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String e=request.getParameter("email");
		String p=request.getParameter("Password");
		HttpSession session =request.getSession();
		if(e.equals("admin@email.com")&& p.equals("admin"))
		{
			
			response.sendRedirect("Admin.html");
			
		}
		else
		{
			session.setAttribute("msg", "Incorrect Credentials!!!");
			response.sendRedirect("AdminLogin.jsp");
		}
	}

}
