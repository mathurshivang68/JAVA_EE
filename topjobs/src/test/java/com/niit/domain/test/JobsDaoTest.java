package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.niit.dao.JobsDao;
import com.niit.domain.Job;
import com.niit.domain.JobSeekerEvents;
import com.niit.domain.JobSkillLoc;
import com.niit.domain.User;
import com.niit.ro.JobRequest;

import junit.framework.Assert;

class JobsDaoTest {

	@Test
	void testPersist() throws JsonParseException, JsonMappingException, IOException {
		JobsDao jd= new JobsDao();
		Job job=new Job();
		job.setJobDescription("Job1");
		job.setJobName("CTS");
		job.setJobTitle("Developer");
		
		
		JobSkillLoc jsl=new JobSkillLoc();
		JobSkillLoc jsl2=new JobSkillLoc();
		
		jsl.setLoc("Delhi");
		jsl2.setLoc("Pune");
		
		jsl.setJob(job);
		jsl.setSkill("C++");
		jsl2.setSkill("Java");
		
		jsl2.setJob(job);
		
		
		List ls=new ArrayList();
		
		ls.add(jsl);
		ls.add(jsl2);
		
		job.setJskill(ls);
		
		User user=new User();
		  user.setUserName("uname2");
		    user.setUserPass("pwd2");
		    job.setUser(user);
		    
		    ObjectMapper objectMapper = new ObjectMapper();
		    
		    String jobAsString = objectMapper.writeValueAsString(job);
		    Job job1 = objectMapper.readValue(jobAsString, Job.class);
		    
		    
		    job.setUser(user);
			
			jd.persist(job);
		
		
			}


	@Test
	void testFindAllJobs(){
	JobsDao jd = new JobsDao();
	List<Job> js = jd.findAllJobs();
	Assert.assertTrue(js.size()>0);	
	}
    

	@Test
	void testFindJobById()
	{
		JobsDao jd=new JobsDao();
		Job req=new Job();
		
		req.setJobId(502L);
		Job js=jd.findJobByID(req);
		System.out.println(js);
	}
	
	
	@Test
	void testFindJobByIdEager()
	{
		JobsDao jd=new JobsDao();
		Job job=new Job();
		
		job.setJobId(202L);
		
		Job js=jd.findJobByIdEager(job);
		System.out.println(js.getJskill().get(0).getSkill());
		
	}
	
	
	@Test
	void testFindAppliedJobs()
	{
		JobsDao jd=new JobsDao();
		JobSeekerEvents job=new JobSeekerEvents();
		User user=new User();
		
		JobSeekerEvents jse=new JobSeekerEvents();

		user.setUserName("diwakar10");
		
		jse.setUser(user);
		
		List<JobSeekerEvents> js=jd.getAppliedJobs(user);
		
		Assert.assertTrue(js.size()>0);	
				System.out.println(js.size());
		
	}
}
