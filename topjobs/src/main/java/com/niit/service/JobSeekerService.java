package com.niit.service;

import com.niit.dao.JobEventDao;
import com.niit.domain.JobSeekerEvents;
import com.niit.ro.JobApplyRequest;

public class JobSeekerService {   //JobSeekerEvent Service

	public void applyJob(JobApplyRequest req)
	{
		
		
		JobSeekerEvents jse=new JobSeekerEvents();
		jse.setEventId(req.getEventId());
		jse.setJob(req.getJob());
		jse.setUser(req.getUser());
	
		JobEventDao jed=new JobEventDao();
		jed.persist(jse);
	}
	
	
	
}
