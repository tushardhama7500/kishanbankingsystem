

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Insert extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/bank","root","arpit945@@");
        PreparedStatement st= con.prepareStatement("update feedback set ActionTaken=?,Status=? where Account_Number=?");
        st.setString(3,request.getParameter("acc"));
        st.setString(1, request.getParameter("message"));
        st.setInt(2, 1);
        st.executeUpdate();
        HttpSession s=request.getSession();
        s.setAttribute("msg", "Succesfully Solved");
        response.sendRedirect("unsolved.jsp");
        
	}catch(Exception e) {
		e.printStackTrace();
	}


}
}
