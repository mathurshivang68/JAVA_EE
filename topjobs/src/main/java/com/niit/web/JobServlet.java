package com.niit.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.ro.JobRequest;
import com.niit.service.JobService;

/**
 * Servlet implementation class JobServlet
 */
public class JobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**0
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		JobRequest req=new JobRequest();
		req.setJobName(request.getParameter("companyName"));
		req.setJobTitle(request.getParameter("jobTitle"));
		req.setJobDescription(request.getParameter("jobDesc"));
		
		
		System.out.println(req.getJobName()+" "+req.getJobTitle()+" "+"IN JOB SERVLET");
		JobService js=new JobService();
		
		
		js.createANewJob(req);
		
		
		
		
		System.out.println("JOB SERVLET ENTERED");
		RequestDispatcher rd=request.getRequestDispatcher("/newJob"); 		 
        rd.forward(request, response);  
		
		
		
		
		
	
	}

	private void MyCon(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
