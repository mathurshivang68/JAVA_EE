package com.niit.ro;

import java.util.List;


import com.niit.domain.Address;
import com.niit.domain.JSMarks;
import com.niit.domain.JobSeeker;
import com.niit.domain.User;

public class ResumeRequest {
	private Long resumeId;
	private JobSeeker jobSeeker;
	private String name;
	private Long timesViewed;
	private String email;
	private String contactNum;
	private Address address;
	private List<String> skills;
	private JSMarks jsMarks;
	private String resumeText;
	
	public String getResumeText()  {
		return resumeText;
	}

<<<<<<< master
	public void setResumeText(String resumeText){
		this.resumeText = resumeText;
	}

=======
	
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
>>>>>>> 5368a16 commit 23/1
	public Long getResumeId() {
		return resumeId;
	}

	public void setResumeId(Long resumeId) {
		this.resumeId = resumeId;
	}

	public JobSeeker getJobSeeker() {
		return jobSeeker;
	}

	public void setJobSeeker(JobSeeker jobSeeker) {
		this.jobSeeker = jobSeeker;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getTimesViewed() {
		return timesViewed;
	}

	public void setTimesViewed(Long timesViewed) {
		this.timesViewed = timesViewed;
	}

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

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<String> getSkills() {
		return skills;
	}

	public void setSkills(List<String> skills) {
		this.skills = skills;
	}

	public JSMarks getJsMarks() {
		return jsMarks;
	}

	public void setJsMarks(JSMarks jsMarks) {
		this.jsMarks = jsMarks;
	}
	
}
