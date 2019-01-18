package com.niit.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.JobsDao;
import com.niit.domain.Job;
import com.niit.ro.JobRequest;
import com.niit.service.JobService;

/**
 * Servlet implementation class ShowThisJobServlet
 */
public class ShowThisJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowThisJobServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String id=request.getParameter("thisJob");
		
		
		JobsDao jd=new JobsDao();
		Job req=new Job(); 				//Calling from job object using job entity
		
		req.setJobId(Long.valueOf(id));
		Job js=jd.findJobByIdEager(req);
		
		
		
		
		
//		JobRequest jr=new JobRequest();
//		jr.setJobId(Long.valueOf(id));
//		
//		JobService js=new JobService();
//		
//		
//		Job job=js.showJobById(jr);
//		
//		
		request.setAttribute("thisJob", js);
		
				
		System.out.println("SHOWTHIS JOB SERVLET ENTERED");
				
		RequestDispatcher rd=request.getRequestDispatcher("/job/showthisjob");
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
