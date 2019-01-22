package com.niit.domain;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
@PrimaryKeyJoinColumn(name="user_name")
public class JobSeeker extends User {
	
	@OneToOne(cascade= {CascadeType.ALL})
	@JoinColumn(name="resumeId",nullable=true)

	Resume resume;
	
	

}
