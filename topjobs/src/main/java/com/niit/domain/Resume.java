package com.niit.domain;

import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


@Access(AccessType.PROPERTY)
@Entity
public class Resume {
	
	
	
	
	Long resumeId;
	
	@Column
	String name;
	
	@Column
	String email;
	
	@Column
	String contactNum;
	
	@Transient
	Address addr;
		
	@Transient
	List<String> skills;
	
	@Transient
	JSMarks jsMarks;
	
	@Column(columnDefinition="varchar(1000)")
	String resumeText;
	
	@JsonIgnore
	@Column(columnDefinition="varchar(1000)")
	public String getResumeText()  {
		
		return resumeText;
	}

	@JsonProperty
	public void setResumeText(String resumeText) throws JsonProcessingException {
		
		this.resumeText = resumeText;
	}


	@Column
	public String getName() {
		return name;
	}

	
	public void setName(String name) {
		this.name = name;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "res_Sequence")
	@SequenceGenerator(name = "res_Sequence", sequenceName = "RES_SEQ")
	public Long getResumeId() {
		return resumeId;
	}


	public void setResumeId(Long resumeId) {
		this.resumeId = resumeId;
	}

	@Column
	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	@Column
	public String getContactNum() {
		return contactNum;
	}

	
	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}

	@Transient
	public Address getAddr() {
		return addr;
	}


	public void setAddr(Address addr) {
		this.addr = addr;
	}

	@Transient
	public List<String> getSkills() {
		return skills;
	}


	public void setSkills(List<String> skills) {
		this.skills = skills;
	}

	@Transient
	public JSMarks getJsMarks() {
		return jsMarks;
	}


	public void setJsMarks(JSMarks jsMarks) {
		this.jsMarks = jsMarks;
	}

	@Column(name="resumeText")
	@Access(AccessType.PROPERTY)
	String toJSON() throws JsonProcessingException
	{
		ObjectMapper objectMapper = new ObjectMapper();
	    
	    String resumeString = objectMapper.writeValueAsString(this);
		return resumeString;
	}
	
	

}
