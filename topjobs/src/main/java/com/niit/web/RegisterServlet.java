package com.niit.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class Register
 */

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = response.getWriter(); 
		try {
			MyCon(request);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		printAllParameters(request,pw);
		System.out.println("REGISTER SERVLET ENTERED");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		/* if(request.isUserInRole("JobSeeker"))
		{	
			RequestDispatcher rd=request.getRequestDispatcher("/jsl");
			rd.forward(request, response);  
		}
		if(request.isUserInRole("Employer"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("/empl");
			rd.forward(request, response);
		}
		
		*/
		RequestDispatcher rd=request.getRequestDispatcher("/regs"); 		//MAKE REGISTERSUCCESS PAGE 
        rd.forward(request, response);  
        
	// getServletContext().getRequestDispatcher("RegisterSuccess.jsp").forward(request,response); 
}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	
	
	
	private void printAllParameters(HttpServletRequest request, PrintWriter pw) {
		pw.println("Parameters");
		
		
			
			String p = request.getParameter("fname");
			
			String p1 = request.getParameter("lname");
			
			String p2 = request.getParameter("email");
			
			String p3 = request.getParameter("psw");
			pw.println("FirstName: "+p+" "+"LastName: "+p1+"Email: "+p2+"Password: "+p3);
		
		
		}
	private void MyCon(HttpServletRequest request) throws SQLException, ClassNotFoundException{
		String insertTableSQL = "INSERT INTO USERS"
				+ "(USER_NAME,USER_PASS) VALUES"
				+ "(?,?)";
		String insertRole = "INSERT INTO USER_ROLES"
				+ "(USER_NAME,ROLE_NAME) VALUES"
				+ "(?,?)";
		String insertDesc = "INSERT INTO USER_DESC"
				+ "(FNAME, LNAME, EMAIL) VALUES"
				+ "(?,?,?)";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		final String DB_DRIVER = "oracle.jdbc.driver.OracleDriver";
		final String DB_CONNECTION = "jdbc:oracle:thin:@localhost:1521:xe";
		
		Connection con=null;
		try {
			
			 con = DriverManager.getConnection(DB_CONNECTION,"topjobs", "1234");
			PreparedStatement preparedStatement = null;
			PreparedStatement preparedStatement1 = null;
			PreparedStatement preparedStatement2 = null;
			
			preparedStatement =con.prepareStatement(insertTableSQL);
			preparedStatement.setString(1,request.getParameter("userid"));
			preparedStatement.setString(2,request.getParameter("psw"));
			
			preparedStatement1 =con.prepareStatement(insertRole);
			preparedStatement1.setString(1,request.getParameter("userid"));
			preparedStatement1.setString(2,request.getParameter("role"));

			preparedStatement2 =con.prepareStatement(insertDesc);
			preparedStatement2.setString(1,request.getParameter("fname"));
			preparedStatement2.setString(2,request.getParameter("lname"));
			preparedStatement2.setString(3,request.getParameter("email"));

			
			preparedStatement.executeUpdate();
			preparedStatement1.executeUpdate();
			preparedStatement2.executeUpdate();
			
			System.out.println("Record is inserted into USER table!");
			preparedStatement1.executeUpdate();
			System.out.println("Record is inserted into USER Role table!");
			preparedStatement2.executeUpdate();
			System.out.println("Record is inserted into User Desc table!");
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());

		
}}}
