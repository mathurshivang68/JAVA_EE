package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.niit.dao.ResumeDao;
import com.niit.domain.Address;
import com.niit.domain.JSMarks;
import com.niit.domain.Resume;

class ResumeDaoTest {

	@Test
	void testPersist() throws IOException {
	ResumeDao rd=new ResumeDao();
	Resume res=new Resume();
	
	res.setName("Shivang");
	res.setEmail("mathur@mail.com");
	
	Address add=new Address();
	add.setCity("Delhi");
	add.setAddLine("Anekant Apt");
	add.setState("New Delhi");
	add.setPin(11009);

	res.setAddr(add);	
	
	
	JSMarks jm=new JSMarks();
	
	jm.setMarks10(80.0);
	jm.setMarks12(88.0);
	jm.setGradMarks(86.0);
	
	res.setJsMarks(jm);
		
	res.setContactNum("8130626703");
	
	List<String> skills=new ArrayList();
	skills.add("C++");
	skills.add("Java");
	
	res.setSkills(skills);
	
	ObjectMapper objectMapper = new ObjectMapper();
	String resumeAsString=objectMapper.writeValueAsString(res);
	res.setResumeText(resumeAsString);
	// r1=objectMapper.readValue(resumeAsString,Resume.class);
	
	rd.persist(res);
	
		
	}

}
