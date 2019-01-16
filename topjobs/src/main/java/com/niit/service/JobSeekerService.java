package com.niit.service;

import com.niit.dao.JobEventDao;
import com.niit.domain.JobSeekerEvents;
import com.niit.ro.JobApplyRequest;

public class JobSeekerService {

	public void applyJob(JobApplyRequest request)
	{
		JobSeekerEvents jse=new JobSeekerEvents();
		JobApplyRequest req=new JobApplyRequest();
		
		jse.setEventId(req.getEventId());
		jse.setJob(req.getJob());
		jse.setUser(req.getUser());
	
		JobEventDao jed=new JobEventDao();
		jed.persist(jse);
	}
	
	
	
}
