package com.niit.domain;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
@PrimaryKeyJoinColumn(name="user_name")
public class JobSeeker extends User {
	
	@OneToOne(cascade= {CascadeType.MERGE},fetch=FetchType.EAGER)
	//11  @JoinColumn(name="user_name",nullable=true,referencedColumnName = "user_name")	
	Resume resume;

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}

	@Override
	public String toString() {
		return "JobSeeker\\\nresume=" + resume + "\nuser_name=" + user_name + "\nuser_pass=" + user_pass + "\nfname="
				+ fname + "\nlname=" + lname + "\nuserRole=" + userRole;
	}
	
	

}
