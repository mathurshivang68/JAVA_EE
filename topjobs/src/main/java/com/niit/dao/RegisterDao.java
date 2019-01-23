package com.niit.dao;

import javax.persistence.EntityManager;

import com.niit.domain.User;
import com.niit.topjobs.PersistenceManager;

public class RegisterDao {
	
	public void persist(User entity) {
		// TODO Auto-generated method stub
		EntityManager em= PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		em.persist(entity);
		em.getTransaction().commit();
		em.close();
		
//	PersistenceManager.INSTANCE.close();
	
	}

}
