/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contact;

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
public class contact extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String vn=request.getParameter("name");	
            String un=request.getParameter("company");
		
                String dob=request.getParameter("email");
                String email=request.getParameter("message");
		
		
		// Connect to mysql and verify username password
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/evoting", "root", "newpass"); // gets a new connection
 
		PreparedStatement ps = c.prepareStatement("insert into contact(name,company,email,message) values(?,?,?,?)");
		ps.setString(1, vn);
                ps.setString(2, un);
              
		ps.setString(3, dob);
                ps.setString(4, email);
               
 
		int result = ps.executeUpdate();
			
			if(result == 1){
				response.sendRedirect("submit.html");
			}
			else{
				response.sendRedirect("faaa.html");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}