package com.niit.service;

import com.niit.dao.JobSeekerEventsDAO;
import com.niit.domain.JobSeekerEvents;
import com.niit.ro.JobSeekerEventsRequest;

public class JobSeekerEventsService {   //JobSeekerEvent Service

	public void applyJob(JobSeekerEventsRequest req)
	{
		JobSeekerEvents jobSeekerEvent=new JobSeekerEvents();
		jobSeekerEvent.setJob(req.getJob());
		jobSeekerEvent.setJobSeeker(req.getJobSeeker());
		JobSeekerEventsDAO jobSeekerEventsDAO=new JobSeekerEventsDAO();
		jobSeekerEventsDAO.persist(jobSeekerEvent);
	}
	
	
	
	
}
