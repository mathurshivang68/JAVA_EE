package com.niit.ro;

import java.util.List;

import com.niit.domain.JSMarks;

public class ResumeRequest {

	String name;
	String email;
	String contactNo;
	List skills;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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
