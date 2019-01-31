package com.niit.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.JobSeekerDAO;
import com.niit.domain.JobSeeker;
import com.niit.domain.User;
import com.niit.ro.ResumeRequest;
import com.niit.service.ResumeService;

/**
 * Servlet implementation class ShowResumeEmployerServlet
 */
public class ShowResumeEmployerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowResumeEmployerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("thisJobSeeker");
		JobSeeker jobSeeker = new JobSeeker();
		jobSeeker.setUser_name(username);
		JobSeekerDAO jobSeekerDAO = new JobSeekerDAO();
		jobSeeker = jobSeekerDAO.findJobSeekerByUsername(jobSeeker);
		
		ResumeRequest resumeRequest=new ResumeRequest();
				
		resumeRequest.setJobSeeker(jobSeeker);
		
		ResumeService resumeService=new ResumeService();
		
		resumeRequest = resumeService.viewResumeEmployer(resumeRequest);
		
		request.setAttribute("resume", resumeRequest);
		System.out.println(resumeRequest);
		System.out.println("Resume of Employer Servlet Entered");
		request.getRequestDispatcher("/emp/showresume").forward(request, response);
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
