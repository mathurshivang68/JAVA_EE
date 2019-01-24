package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.niit.dao.JobSeekerDao;
import com.niit.domain.JobSeeker;

class JobSeekerTest {

	@Test
	void testfindJobSeekerById() {
	JobSeekerDao jsd=new JobSeekerDao();
	JobSeeker js=new JobSeeker();
	js.setUserName("a1");
	
	JobSeeker js1=jsd.findJobSeekerByID(js);
	

	System.out.println(js1.getUserPass());
	
	
	
	
	
	}

}
