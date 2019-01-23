package com.niit.ro;

import java.util.List;

import com.niit.domain.Address;
import com.niit.domain.JSMarks;
import com.niit.domain.JobSeeker;
import com.niit.domain.User;

public class ResumeRequest {

	
	Long resumeId;
//	String name;
	String email;
	String contactNum;
	List skills;
	JobSeeker user;
	long timesViewed;
	
	Address addr;
	JSMarks jsMarks;
	
	
	
	public JobSeeker getUser() {
		return user;
	}
	public void setUser(JobSeeker user) {
		this.user = user;
	}
	public JSMarks getJsMarks() {
		return jsMarks;
	}
	public void setJsMarks(JSMarks jsMarks) {
		this.jsMarks = jsMarks;
	}
	public Address getAddr() {
		return addr;
	}
	public void setAddr(Address addr) {
		this.addr = addr;
	}
	public long getTimesViewed() {
		return timesViewed;
	}
	public void setTimesViewed(long timesViewed) {
		this.timesViewed = timesViewed;
	}
	public Long getResumeId() {
		return resumeId;
	}
	public void setResumeId(Long resumeId) {
		this.resumeId = resumeId;
	}
	
	
	
	
	public List getSkills() {
		return skills;
	}
	public void setSkills(List skills) {
		this.skills = skills;
	}
	
//	public String getName() {
//		return name;
//	}
//	public void setName(String name) {
//		this.name = name;
//	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactNum() {
		return contactNum;
	}
	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}
	
	
}
