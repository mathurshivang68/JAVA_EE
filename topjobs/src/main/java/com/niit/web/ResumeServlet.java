package com.niit.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.niit.domain.JSMarks;
import com.niit.domain.JobSkillLoc;
import com.niit.ro.ResumeRequest;
import com.niit.service.ResumeService;

/**
 * Servlet implementation class ResumeServlet
 */
public class ResumeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResumeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ResumeRequest req=new ResumeRequest();
		req.setName(request.getParameter("name"));
		req.setEmail(request.getParameter("email"));
		req.setContactNo(request.getParameter("contactNo"));
		
		JSMarks jsm=new JSMarks();
		
		jsm.setMarks10(Double.valueOf(request.getParameter("marks10")));
		jsm.setMarks12(Double.valueOf(request.getParameter("marks12")));
		jsm.setGradMarks(Double.valueOf(request.getParameter("marksgrad")));
		req.setMarks(jsm);
		
		String[] skillarr=request.getParameterValues("skills");
		
		List<String> jsllist=new ArrayList<String>();
				
		
		for(String s:skillarr)
		{
			jsllist.add(s);
			
		}
			
		req.setSkills(jsllist);
				
		
		
		ResumeService rs=new ResumeService();
		rs.createANewResume(req);
		
	

		
		System.out.println("RESUME SERVLET ENTERED");
		RequestDispatcher rd=request.getRequestDispatcher("/applyjob");  //apply jobs page forward
		rd.forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
