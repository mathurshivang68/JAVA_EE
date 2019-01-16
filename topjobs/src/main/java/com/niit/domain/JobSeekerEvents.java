package com.niit.domain;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class JobSeekerEvents {
	
	@OneToOne(cascade= {CascadeType.MERGE})
	@JoinColumn(name="jobId",referencedColumnName = "jobId")
	Job job;
	
	@OneToOne(cascade= {CascadeType.MERGE})
	@JoinColumn(name="user_name", referencedColumnName = "user_name")
	User user;
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "event_Sequence")
	@SequenceGenerator(name = "event_Sequence", sequenceName = "EVE_SEQ")
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
