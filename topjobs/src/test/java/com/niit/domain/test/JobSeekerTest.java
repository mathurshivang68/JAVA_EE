package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.niit.dao.JobSeekerDAO;
import com.niit.domain.JobSeeker;
import com.niit.domain.UserRole;

class JobSeekerTest {

	
	@Test
	void createJobSeeker() {
		JobSeeker js = new JobSeeker();
		js.setFname("Diwakar");
		js.setLname("Saini");
		js.setUser_name("d1");
		js.setUser_pass("p1");
		js.setResumeCreated(false);
		UserRole ur = new UserRole();
		ur.setRole_name("JobSeeker");
		ur.setUser_name("d1");
		
		js.setUserRole(ur);
		
		JobSeekerDAO jDAO = new JobSeekerDAO();
		jDAO.merge(js);
	}
	
	
	
	
	@Test
	void testfindJobSeekerById() {
	JobSeekerDAO jsd=new JobSeekerDAO();
	JobSeeker js=new JobSeeker();
	js.setUser_name("a1");
	
	JobSeeker js1=jsd.findJobSeekerByUsername(js);
	System.out.println(js1.getUser_pass());
	
	}
	
	
	
	@Test
	void updateJobSeeker() {
		JobSeeker js = new JobSeeker();
		js.setUser_name("d3");
		JobSeekerDAO jDAO = new JobSeekerDAO();
		js = jDAO.findJobSeekerByUsername(js);
		js.setResumeCreated(false);
		jDAO.merge(js);
	}
	

}
