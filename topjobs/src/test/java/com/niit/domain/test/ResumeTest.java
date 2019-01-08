package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;
import java.util.ArrayList;

import javax.persistence.EntityManager;

import org.junit.jupiter.api.Test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.niit.domain.Address;
import com.niit.domain.JSMarks;
import com.niit.domain.Resume;
import com.niit.topjobs.PersistenceManager;

class ResumeTest {

	@Test
	void testToJSON() throws IOException {
	Resume rs=new Resume();
	rs.setName("Shivang");
	rs.setEmail("mathur@gmail.com");
	rs.setContactNum("9818282189");
	
	Address addr=new Address();
	addr.setAddLine("68, Anekant Appt");
	addr.setCity("delhi");
	addr.setState("Delhi");
	addr.setPin(110096);
	
	rs.setAddr(addr);
	
	JSMarks jsm=new JSMarks();
	jsm.setMarks10(80.00);
	jsm.setMarks12(88.00);
	jsm.setGradMarks(86.00);
	
	rs.setJsMarks(jsm);
	
	ArrayList<String> al=new ArrayList<String>();
	al.add("Java");
	al.add("C++");
	al.add("HTML");
	
	rs.setSkills(al);
	
	//Making JSON and adding ResumeText along with other parameters into single parameter
	ObjectMapper objectMapper = new ObjectMapper();
    
    String resumeString = objectMapper.writeValueAsString(rs);
    rs.setResumeText(resumeString);
    EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
    em.getTransaction().begin();
	
    
    em.persist(rs);
    em.getTransaction()
        .commit();
        
    
    
    em.getTransaction().begin();
    
	
    Resume s=em.find(Resume.class, 1002);
    em.getTransaction()
    .commit();
em.close();

    
	ObjectMapper obj=new ObjectMapper();
	Resume s2=obj.readValue(s.getResumeText(), Resume.class);
	
	
	
	}
	
	

	
}
