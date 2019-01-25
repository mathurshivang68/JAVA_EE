package com.niit.ro;

import com.niit.domain.Job;
import com.niit.domain.JobSeeker;
import com.niit.domain.User;

public class JobApplyRequest {

	Job job;
	JobSeeker user;
	Long eventId;
	
	
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	public JobSeeker getUser() {
		return user;
	}
	public void setUser(JobSeeker user) {
		this.user = user;
	}
	public Long getEventId() {
		return eventId;
	}
	public void setEventId(Long eventId) {
		this.eventId = eventId;
	}
	
	
	
}
