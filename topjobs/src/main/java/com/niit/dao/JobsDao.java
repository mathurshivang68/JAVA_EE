package com.niit.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import com.niit.domain.Job;
import com.niit.topjobs.PersistenceManager;

public class JobsDao {

	public void persist(Job entity) {
		// TODO Auto-generated method stub
		EntityManager em= PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		em.persist(entity);
		em.getTransaction().commit();
		em.close();
		
//	PersistenceManager.INSTANCE.close();
	
	}
	public  List<Job> findAllJobs() {
		
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		
		   em.getTransaction()
		       .begin();
		   CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Job> cq = cb.createQuery(Job.class);
		   	Root<Job> root = cq.from(Job.class);
		   	List<Job> ls = em.createQuery(cq).getResultList();
		   em.getTransaction()
		       .commit();
		   em.close();
		  // PersistenceManager.INSTANCE.close();
		   return ls;
		   
		   
		}
	
	public  Job findJobByID(Long Id) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
	    em.getTransaction()
	        .begin();
	    Job entity=em.find(Job.class, Id);
	    em.getTransaction()
        .commit();
    em.close();
    PersistenceManager.INSTANCE.close();
    return entity;
	    
	    
	}
	
}
