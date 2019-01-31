package com.niit.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import com.niit.domain.Job;
import com.niit.domain.JobSeeker;
import com.niit.domain.JobSeekerEvents;
import com.niit.topjobs.PersistenceManager;

public class JobSeekerEventsDAO {

	public void persist(JobSeekerEvents entity)
	{
		EntityManager em=PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		em.persist(entity);
		em.getTransaction().commit();
		em.close();
		
	}
	
	
	public void delete(Job job) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		List<JobSeekerEvents> list = (List<JobSeekerEvents>) findJobEventsByJob(job);
		if(!list.isEmpty()) {
			for(JobSeekerEvents jse: list) {
				jse = em.find(JobSeekerEvents.class, jse.getEventId());
				System.out.println(jse);
				em.remove(jse);
			}
		}
		em.getTransaction().commit();
		em.close();
	}
	
	public List<JobSeekerEvents> findJobEventsByUsername(JobSeeker jobSeeker) {
		EntityManager em=PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		CriteriaBuilder cb=em.getCriteriaBuilder();
		CriteriaQuery<JobSeekerEvents> cq = cb.createQuery(JobSeekerEvents.class);
		Root<JobSeekerEvents> root=cq.from(JobSeekerEvents.class);
		cq.select(root);

		Metamodel m = em.getMetamodel();
		EntityType<JobSeekerEvents> rEntity = m.entity(JobSeekerEvents.class);
		Expression job_exp = root.get(rEntity.getSingularAttribute("jobSeeker"));
		Predicate p1 = cb.equal(job_exp,jobSeeker);
		cq.where(p1);

		List<JobSeekerEvents> dataObj= em.createQuery(cq).getResultList();
		em.getTransaction().commit();
		em.close();
		return dataObj;
	}
	
	
	public List<JobSeekerEvents> findJobEventsByJob(Job	job) {
		EntityManager em=PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		CriteriaBuilder cb=em.getCriteriaBuilder();
		CriteriaQuery<JobSeekerEvents> cq = cb.createQuery(JobSeekerEvents.class);
		Root<JobSeekerEvents> root=cq.from(JobSeekerEvents.class);
		cq.select(root);

		Metamodel m = em.getMetamodel();
		EntityType<JobSeekerEvents> rEntity = m.entity(JobSeekerEvents.class);
		Expression job_exp = root.get(rEntity.getSingularAttribute("job"));
		Predicate p1 = cb.equal(job_exp,job);
		cq.where(p1);

		List<JobSeekerEvents> dataObj= em.createQuery(cq).getResultList();
		em.getTransaction().commit();
		em.close();
		return dataObj;
	}
	
	

}
