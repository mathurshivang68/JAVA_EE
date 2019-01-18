package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.niit.dao.JobEventDao;
import com.niit.domain.Job;
import com.niit.domain.JobSeekerEvents;
import com.niit.domain.User;
import com.niit.ro.JobApplyRequest;
import com.niit.service.JobSeekerService;

class JobEventDaoTest {

	@Test
	void test() {
	JobEventDao	jed=new JobEventDao();
	JobSeekerEvents jse=new JobSeekerEvents();
	
		
	Job j=new Job();
	j.setJobId(102L);

	jse.setJob(j);
	
	User user=new User();
	user.setUserName("shivang");
	jse.setUser(user);
	
	jed.persist(jse);
	
	//System.out.println(jse);
	
	}

	
		
	
	
}
