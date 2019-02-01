package com.niit.domain;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class EmployerEvents {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "event1_Sequence")
	@SequenceGenerator(name = "event1_Sequence", sequenceName = "EMP_EVE_SEQ")
	private Long eventId;
	
	@ManyToOne(cascade= {CascadeType.MERGE})
	private Job job;

	@ManyToOne(cascade= {CascadeType.MERGE})
	private JobSeeker jobSeeker;
	

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

	@Override
	public String toString() {
		return "EmployerEvents [eventId=" + eventId + ", job=" + job.getJobId() + ", jobSeeker=" + jobSeeker.getUser_name() + "]";
	}
	
	
	
	
}
