package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.junit.jupiter.api.Test;

import com.niit.domain.Job;
import com.niit.domain.JobSeeker;
import com.niit.domain.JobSeekerEvents;
import com.niit.topjobs.PersistenceManager;

class ShowJobsJoinTest {

	@Test
	void test() {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
//		Query query = em.createQuery("SELECT j FROM Job j WHERE j.jobId NOT IN "
//						+ "(SELECT j.jobId FROM Job j LEFT OUTER JOIN "
//						+ "JobSeekerEvents jse ON j.jobId=jse.job "
//						+ "WHERE jse.jobSeeker='d2')");
//		List<Job> list = query.getResultList();
//		

		JobSeeker jobSeeker = new JobSeeker();
		jobSeeker.setUser_name("d2");
		
		
		List<Job> list = em.createQuery("SELECT j FROM Job j WHERE j.jobId NOT IN "
				+ "(SELECT j.jobId FROM Job j LEFT OUTER JOIN "
				+ "JobSeekerEvents jse ON j.jobId=jse.job "
				+ "WHERE jse.jobSeeker= :name)").setParameter("name", jobSeeker)
	    		.getResultList();
		
		for(Job obj:list) {
			System.out.println(obj);
		}
		
	}

}
