package com.niit.ro;

import java.util.List;

import com.niit.domain.JSMarks;
import com.niit.domain.User;

public class ResumeRequest {

	
	Long resumeId;
//	String name;
	String email;
	String contactNo;
	List skills;
	User user;
	long timesViewed;
	
	
	public long getTimesViewed() {
		return timesViewed;
	}
	public void setTimesViewed(long timesViewed) {
		this.timesViewed = timesViewed;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Long getResumeId() {
		return resumeId;
	}
	public void setResumeId(Long resumeId) {
		this.resumeId = resumeId;
	}
	JSMarks marks;
	
	
	
	public List getSkills() {
		return skills;
	}
	public void setSkills(List skills) {
		this.skills = skills;
	}
	public JSMarks getMarks() {
		return marks;
	}
	public void setMarks(JSMarks marks) {
		this.marks = marks;
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
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
	
}
