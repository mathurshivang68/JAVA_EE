package com.niit.dao;

import javax.persistence.EntityManager;

import com.niit.domain.Resume;
import com.niit.topjobs.PersistenceManager;

public class ResumeDao {
	
	public void persist(Resume entity)
	{
		EntityManager em=PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		em.persist(entity);
		em.getTransaction().commit();
		em.close();
		
	}
	
	

}
