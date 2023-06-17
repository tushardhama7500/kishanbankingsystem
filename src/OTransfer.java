

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OTransfer extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","arpit945@@");
			
			HttpSession session=request.getSession();
			long a=(long)session.getAttribute("Anumber");
			PreparedStatement st=con.prepareStatement("select Balance from register where Account_Number=?");
			
			st.setLong(1,a);
			ResultSet rs=st.executeQuery();
			rs.next();
			long s=Long.parseLong(request.getParameter("Ano"));
			
			
			
			double bal=rs.getDouble("Balance");
			Double amount = Double.parseDouble(request.getParameter("amount"));
			if(amount>bal)
			{
				session.setAttribute("lbal", "Insufficient Funds");
				response.sendRedirect("Transfer.jsp");
			}
			else {
				
				
				String name=request.getParameter("name");
				String bname = request.getParameter("bname");
				PreparedStatement ps= con.prepareStatement("insert into transaction values(?,?,?,?,?,?,?,?,?)");
				ps.setLong(1,a);
				long acc=(ThreadLocalRandom.current().nextLong(100000000,999999999))*10;
				ps.setLong(2,acc);
				ps.setDouble(3,amount);
				ps.setDate(4,new Date(System.currentTimeMillis()));
				ps.setString(5, "Debit");
				bal=bal-amount;
				ps.setDouble(6,bal);
				ps.setString(7, bname);
				ps.setString(8,name);
				ps.setLong(9,s);
				ps.execute();
				
				
				
				
				
				PreparedStatement st2 = con.prepareStatement("update register set Balance=? where Account_Number=?");
				st2.setDouble(1, bal);
				st2.setLong(2, a);
				st2.execute();
				
				
				
				session.setAttribute("lbal", "Transaction Successfull");
				response.sendRedirect("Transfer.jsp");
				
		}}
		catch(Exception e)
		{
			out.print(e);
		}
	}

}
