package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import org.junit.jupiter.api.Test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.niit.domain.Job;

import com.niit.domain.JobSkillLoc;
import com.niit.domain.User;
import com.niit.topjobs.PersistenceManager;

class JobTest {

	@Test
	void testNewJob() throws IOException {
	
		 Job job = new Job();

		    EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		    em.getTransaction()
		        .begin();
		    job.setJobDescription("New JOB4");
		    job.setJobName("CTS4");
		    job.setJobTitle("JavaDev4");
		    
		    JobSkillLoc jsl = new JobSkillLoc();
		    JobSkillLoc jsl1 = new JobSkillLoc();
		    jsl.setLoc("Delhi");
		    jsl1.setLoc("Lucknow");
		    jsl.setJob(job);
		    jsl.setSkill("Java");
		    jsl1.setSkill("C++");
		    jsl1.setJob(job);
		    
		    List<JobSkillLoc> ls = new ArrayList();
		    
		    ls.add(jsl1);
		    ls.add(jsl);
		    job.setJskill(ls);
		    
		    User user = new User();
		    user.setUserName("uname2");
		    user.setUserPass("pwd2");
		    job.setUser(user);
		    
		    ObjectMapper objectMapper = new ObjectMapper();
		    
		    String jobAsString = objectMapper.writeValueAsString(job);
		    Job job1 = objectMapper.readValue(jobAsString, Job.class);
		    
		    
		    job.setUser(user);
		    em.persist(job);
		    em.getTransaction()
		        .commit();
		    em.close();
		    PersistenceManager.INSTANCE.close();	
	}

}
