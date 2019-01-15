package com.niit.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.niit.dao.ResumeDao;
import com.niit.domain.Resume;
import com.niit.ro.ResumeRequest;

public class ResumeService {

	public void createANewResume(ResumeRequest req) throws JsonProcessingException
	{
		Resume res=new Resume();
		res.setName(req.getName());
		res.setEmail(req.getEmail());
		res.setContactNum(req.getContactNo());
		res.setSkills(req.getSkills());
		res.setJsMarks(req.getMarks());
		ObjectMapper objectMapper = new ObjectMapper();
		String resumeText=objectMapper.writeValueAsString(res);
		
		res.setResumeText(resumeText);
		ResumeDao rd=new ResumeDao();
		rd.persist(res);
	}
	
	
	
}
