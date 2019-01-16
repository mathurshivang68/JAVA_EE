package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.niit.domain.Job;
import com.niit.domain.User;
import com.niit.ro.JobApplyRequest;
import com.niit.service.JobSeekerService;

class JobSeekerServiceTest {

	@Test
	void applyJobServiceTest()
	{
		JobSeekerService jss=new JobSeekerService();
		JobApplyRequest request= new JobApplyRequest();
		
		Job job=new Job();
		job.setJobId(102L);
		request.setJob(job);
		

		User user=new User();
		user.setUserName("shivang");
		request.setUser(user);
		
		jss.applyJob(request);
	}
}