package com.niit.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.EmployerDAO;
import com.niit.dao.EmployerEventsDAO;
import com.niit.dao.JobSeekerDAO;
import com.niit.dao.JobSeekerEventsDAO;
import com.niit.domain.Employer;
import com.niit.domain.EmployerEvents;
import com.niit.domain.JobSeeker;
import com.niit.domain.JobSeekerEvents;
import com.niit.ro.EmployerEventsRequest;
import com.niit.service.EmployerEventsService;

/**
 * Servlet implementation class SelectApplicantServlet
 */
public class SelectApplicantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectApplicantServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameterValues("jobSeekerEventId")==null) {
			request.setAttribute("noApplicant", "No Applicant Selected!");
			request.getRequestDispatcher("/emp/ShowJobServlet").forward(request, response);
		}
		else {
			String[] jobSeekerEventIds = request.getParameterValues("jobSeekerEventId");
			JobSeekerEvents jobSeekerEvents = new JobSeekerEvents();
			JobSeekerEventsDAO jobSeekerEventsDAO = new JobSeekerEventsDAO();
			
			EmployerEventsRequest employerEventsRequest = new EmployerEventsRequest();
			EmployerEventsService employerEventsService = new EmployerEventsService();
			EmployerEventsDAO employerEventsDAO = new EmployerEventsDAO();
			
			for(String jobSeekerEventId : jobSeekerEventIds ) {
				jobSeekerEvents.setEventId(Long.valueOf(jobSeekerEventId));
				jobSeekerEvents = jobSeekerEventsDAO.findJobEventsById(jobSeekerEvents);
				employerEventsRequest.setJob(jobSeekerEvents.getJob());
				employerEventsRequest.setJobSeeker(jobSeekerEvents.getJobSeeker());
				employerEventsService.applyJob(employerEventsRequest);
				jobSeekerEventsDAO.deleteById(jobSeekerEvents);
			}
			
			
			request.getRequestDispatcher("/emp/ShowApplicantServlet").forward(request, response);
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
