package com.niit.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.domain.Employer;
import com.niit.domain.Job;
import com.niit.service.JobService;

/**
 * Servlet implementation class ShowJobServlet
 */
public class ShowJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowJobServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at ShowJobSer: ").append(request.getContextPath());
		
		JobService js=new JobService();
		Employer emp=new Employer();
		emp.setUserName(request.getRemoteUser());
		
		
		List<Job> ls=js.showEmployerJobs(emp);
	request.setAttribute("JobList", ls);
		
		System.out.println("SHOWJOB SERVLET ENTERED");
		RequestDispatcher rd=request.getRequestDispatcher("/emp/empjob"); 		
        rd.forward(request, response);  
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
