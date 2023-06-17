

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Deposit extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","arpit945@@");
			Double amount = Double.parseDouble(request.getParameter("amount"));
			int dur=Integer.parseInt(request.getParameter("dur"));
			
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
			
			PreparedStatement ps= con.prepareStatement("insert into deposit values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setLong(1,a);
			ps.setDouble(2,amount);
			ps.setString(3, w1name);
			ps.setString(4, w2name);
			ps.setString(5,w1no);
			ps.setString(6,w2no);
			ps.setInt(7,dur);
			ps.setDouble(8, 7.3);
			ps.setDate(9,new Date(System.currentTimeMillis()));
			LocalDate ld = new Date(System.currentTimeMillis()).toLocalDate();
			LocalDate yearLater = ld.plusYears(dur);
			ps.setDate(10, Date.valueOf(yearLater));
			ps.setInt(11, 0);
			ps.execute();
			
			session.setAttribute("abc", "Request is Successfully Registered.");
			response.sendRedirect("DepositRegister.jsp");
		}
		catch(Exception e)
		{
			out.print(e);
		}
	}


}
