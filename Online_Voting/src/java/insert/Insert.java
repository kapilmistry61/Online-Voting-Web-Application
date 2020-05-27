/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package insert;

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
public class Insert extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String vn=request.getParameter("voter_card_number");	
            String un=request.getParameter("name");
		String uname=request.getParameter("username");
                String gen=request.getParameter("gender");
                String dob=request.getParameter("dob");
                String email=request.getParameter("email");
		String pw=request.getParameter("password");
		
		// Connect to mysql and verify username password
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/evoting", "root", "newpass"); // gets a new connection
 
		PreparedStatement ps = c.prepareStatement("insert into login(voter_card_number,name,username,gender,dob,email,password) values(?,?,?,?,?,?,?)");
		ps.setString(1, vn);
                ps.setString(2, un);
                ps.setString(3, uname);
                ps.setString(4, gen);
		ps.setString(5, dob);
                ps.setString(6, email);
                ps.setString(7, pw);
 
		int result = ps.executeUpdate();
			
			if(result == 1){
				response.sendRedirect("suc.html");
			}
			else{
				response.sendRedirect("fail.html");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}