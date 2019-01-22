package com.niit.service;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.niit.dao.ResumeDao;
import com.niit.domain.JobSeeker;
import com.niit.domain.Resume;
import com.niit.domain.User;
import com.niit.ro.ResumeRequest;

public class ResumeService {

	public void createANewResume(ResumeRequest req) throws JsonProcessingException
	{
		Resume res=new Resume();
		JobSeeker user=new JobSeeker();
		user.getUserName();
		res.setUser(user);
		res.setEmail(req.getEmail());
		res.setContactNum(req.getContactNum());
		
		res.setSkills(req.getSkills());
		res.setJsMarks(req.getJsMarks());
		ObjectMapper objectMapper = new ObjectMapper();
		String resumeText=objectMapper.writeValueAsString(res);
		
		res.setResumeText(resumeText);
		ResumeDao rd=new ResumeDao();
		rd.persist(res);
	}
	
	public ResumeRequest viewResumeEmployer(ResumeRequest obj) throws JsonParseException, JsonMappingException, IOException {
		ResumeDao rDAO = new ResumeDao();
		Resume resume = rDAO.ViewResumeEmployer(obj);

		ObjectMapper om = new ObjectMapper();
		ResumeRequest resumeReq = om.readValue(resume.getResumeText(), ResumeRequest.class);
		resumeReq.setResumeId(resume.getResumeId());    
		resumeReq.setTimesViewed(resume.getTimesViewed());
		return resumeReq;
	}
	
	public ResumeRequest viewResumeJobSeeker(ResumeRequest obj) throws JsonParseException, JsonMappingException, IOException {
		ResumeDao rDAO = new ResumeDao();
		Resume resume = rDAO.viewResumeJobSeeker(obj);

		ObjectMapper om = new ObjectMapper();
		ResumeRequest resumeReq = om.readValue(resume.getResumeText(), ResumeRequest.class);
		resumeReq.setResumeId(resume.getResumeId());
		resumeReq.setTimesViewed(resume.getTimesViewed());
		return resumeReq;
	}
	
	
}
