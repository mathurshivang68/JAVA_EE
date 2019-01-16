package com.niit.ro;

import com.niit.domain.Job;
import com.niit.domain.User;

public class JobApplyRequest {

	Job job;
	User user;
	Long eventId;
	
	
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Long getEventId() {
		return eventId;
	}
	public void setEventId(Long eventId) {
		this.eventId = eventId;
	}
	
	
	
}
