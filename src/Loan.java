

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Loan extends HttpServlet {
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		try
		{
			String fname = request.getParameter("name");
			String lname = request.getParameter("last");
			String email=request.getParameter("email");
			String phone = request.getParameter("phone");
			Double amount = Double.parseDouble(request.getParameter("amount"));
			String did=request.getParameter("did");
			String dno = request.getParameter("dno");
			String w1name = request.getParameter("w1name");
			String w1no = request.getParameter("w1no");
			String w1A= request.getParameter("w1A");
			String w2name = request.getParameter("w2name");
			String w2no = request.getParameter("w2no");
			String w2A= request.getParameter("w2A");
			HttpSession session=request.getSession();
			long a=(long)session.getAttribute("Anumber");
			Connection c= LoanDOA.dbConnect();
			PreparedStatement ps= c.prepareStatement("insert into loan values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setLong(1,a);
			ps.setDouble(2,amount);
			ps.setString(3,fname);
			ps.setString(4,lname);
			ps.setString(5,email);
			ps.setString(6, w1name);
			ps.setString(7, w1A);
			ps.setString(8,w1no);
			ps.setString(9, w2name);
			ps.setString(10, w2A);
			ps.setString(11,w2no);
			ps.setInt(12, 0);
			ps.setInt(13,Integer.parseInt(request.getParameter("dur")));
			ps.setDouble(14, 7.3);
			
			ps.setDate(15,new Date(System.currentTimeMillis()));
			ps.setString(16, phone);
			ps.setString(17, did);
			ps.setString(18,dno);
			ps.execute();
			
			session.setAttribute("abc", "Request is Successfully.<br>Registerd Loan Will be Processed Soon!!!");
			response.sendRedirect("LoanRegister.jsp");
		}
		catch(Exception e)
		{
			out.print(e);
		}
	}

	

}
