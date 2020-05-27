package voter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class voter extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("voter_card_number");
		String pw=request.getParameter("voter");
		
		// Connect to mysql and verify username password
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/evoting", "root", "newpass"); // gets a new connection
 
		PreparedStatement ps = c.prepareStatement("select voter_card_number from login where voter_card_number=? ");
		ps.setString(1, un);
		
 
		ResultSet rs = ps.executeQuery();
                
               
                

		while (rs.next()) {
			 
                PreparedStatement pr = c.prepareStatement("insert ignore into voter(voter_card_number,voter) values(?,?)");
		pr.setString(1, un);
                pr.setString(2, pw);
                

                int result = pr.executeUpdate();
                
                response.sendRedirect("suvoter.html");
			return;
		}
		response.sendRedirect("favoter.html");
		return;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
                
                
                
                
	}
        
       
}