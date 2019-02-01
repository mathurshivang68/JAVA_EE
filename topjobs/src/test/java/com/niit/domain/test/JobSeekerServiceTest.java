package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.niit.domain.Job;
import com.niit.domain.JobSeeker;
import com.niit.domain.User;
import com.niit.ro.JobSeekerEventsRequest;
import com.niit.service.JobSeekerEventsService;

class JobSeekerServiceTest {

	@Test
	void applyJobServiceTest()
	{
		JobSeekerEventsService jss=new JobSeekerEventsService();
		JobSeekerEventsRequest request= new JobSeekerEventsRequest();
		Job job=new Job();
		job.setJobId(502L);
		request.setJob(job);
		JobSeeker jobSeeker=new JobSeeker();
		jobSeeker.setUser_name("diwakar10");
		request.setJobSeeker(jobSeeker);
		jss.applyJob(request);
	}
}