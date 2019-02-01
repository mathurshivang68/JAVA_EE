package com.niit.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.EmployerEventsDAO;
import com.niit.domain.EmployerEvents;
import com.niit.domain.JobSeeker;

/**
 * Servlet implementation class ShowSelectedForJobsServlet
 */
public class ShowSelectedForJobsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowSelectedForJobsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JobSeeker jobSeeker = new JobSeeker();
		jobSeeker.setUser_name(request.getRemoteUser());
		
		EmployerEventsDAO employerEventsDAO = new EmployerEventsDAO();
		List<EmployerEvents> employerEventsList = employerEventsDAO.findEmployerEventsByUsername(jobSeeker);
		request.setAttribute("employerEventsList", employerEventsList);
		request.getRequestDispatcher("/job/ShowSelectedForJobs").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
