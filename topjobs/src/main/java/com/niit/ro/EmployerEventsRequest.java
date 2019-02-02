package com.niit.ro;

import javax.persistence.ManyToOne;

import com.niit.domain.Employer;
import com.niit.domain.Job;
import com.niit.domain.JobSeeker;

public class EmployerEventsRequest {
	private Job job;
	private JobSeeker jobSeeker;
	private Long eventId;
	
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	public JobSeeker getJobSeeker() {
		return jobSeeker;
	}
	public void setJobSeeker(JobSeeker jobSeeker) {
		this.jobSeeker = jobSeeker;
	}
	public Long getEventId() {
		return eventId;
	}
	public void setEventId(Long eventId) {
		this.eventId = eventId;
	}
}