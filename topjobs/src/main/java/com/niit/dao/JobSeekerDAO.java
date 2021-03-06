package com.niit.dao;

import javax.persistence.EntityManager;

import com.niit.domain.JobSeeker;
import com.niit.domain.JobSeeker;
import com.niit.topjobs.PersistenceManager;

public class JobSeekerDAO {

	
	public void merge(JobSeeker entity) {
		EntityManager em= PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		em.merge(entity);
		em.getTransaction().commit();
		em.close();
	}
	
	public  JobSeeker findJobSeekerByUsername(JobSeeker jobs) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		jobs=em.find(JobSeeker.class, jobs.getUser_name());
		em.getTransaction().commit();
		em.close();
		return jobs;
	}
}
