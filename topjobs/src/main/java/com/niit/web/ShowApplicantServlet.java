package com.niit.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.EmployerDAO;
import com.niit.dao.JobSeekerEventsDAO;
import com.niit.domain.Employer;
import com.niit.domain.Job;
import com.niit.domain.JobSeeker;
import com.niit.domain.JobSeekerEvents;

/**
 * Servlet implementation class ShowAppicantServlet
 */
public class ShowApplicantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowApplicantServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employer emp = new Employer();
		emp.setUser_name(request.getRemoteUser());
		EmployerDAO employerDAO = new EmployerDAO();
		emp = employerDAO.findEmployerByUsername(emp);
		if(emp.getEndDate()!=null) {
			if(emp.getEndDate().equals(new Date())) {
				emp.setIsActive(false);
				emp.setLoginsPurchased(0L);
				emp.setPurchaseDate(null);
				emp.setEndDate(null);
				employerDAO.merge(emp);
			}
		}

		if(emp.getIsActive()) {
			String jobId = request.getParameter("thisJob");
			Job job = new Job();
			job.setJobId(Long.valueOf(jobId));
			JobSeekerEventsDAO jseDAO = new JobSeekerEventsDAO();
			List<JobSeekerEvents> jseList = jseDAO.findJobEventsByJob(job);
			
			List<JobSeeker> jobSeekerList = new ArrayList<>();
			
			for(JobSeekerEvents jse: jseList) {
				jobSeekerList.add(jse.getJobSeeker());
			}
			
			request.setAttribute("jobSeekerList", jobSeekerList);						//sending a list of jobSeekers against thisJobId
			request.getRequestDispatcher("/emp/ShowApplicants").forward(request, response); 
		}
		else {
			request.getRequestDispatcher("/emp/purchaselogin").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
