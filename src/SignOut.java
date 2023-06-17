

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SignOut extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s=request.getSession(true);
		String a=(String)s.getAttribute("fName");
		s.invalidate();
		
		if(s!=null)
		{
			response.sendRedirect("index.html");
		}else {
			response.sendRedirect("AdminLogin.jsp");
		}
	}

	
}
