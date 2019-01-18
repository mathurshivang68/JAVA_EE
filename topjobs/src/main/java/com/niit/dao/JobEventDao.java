package com.niit.dao;

import javax.persistence.EntityManager;

import com.niit.domain.JobSeekerEvents;
import com.niit.topjobs.PersistenceManager;

public class JobEventDao {

	public void persist(JobSeekerEvents entity)
	{
		EntityManager em=PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		em.persist(entity);
		em.getTransaction().commit();
		em.close();
		
	}
	

}
