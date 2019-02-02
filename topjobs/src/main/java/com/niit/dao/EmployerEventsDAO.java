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

import com.niit.domain.EmployerEvents;
import com.niit.domain.Job;
import com.niit.domain.JobSeeker;
import com.niit.topjobs.PersistenceManager;

public class EmployerEventsDAO {

	public void persist(EmployerEvents entity) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		em.persist(entity);
		em.getTransaction().commit();
		em.close();

	}

	public void deleteByJob(Job job) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		List<EmployerEvents> list = (List<EmployerEvents>) findEmployerEventsByJob(job);
		if (!list.isEmpty()) {
			for (EmployerEvents employerEvent : list) {
				employerEvent = em.find(EmployerEvents.class, employerEvent.getEventId());
				System.out.println(employerEvent);
				em.remove(employerEvent);
			}
		}
		em.getTransaction().commit();
		em.close();
	}
	
	public void deleteById(EmployerEvents employerEvent) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		employerEvent = em.find(EmployerEvents.class, employerEvent.getEventId());
		em.remove(employerEvent);
		em.getTransaction().commit();
		em.close();
	}

	public List<EmployerEvents> findEmployerEventsByUsername(JobSeeker jobSeeker) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<EmployerEvents> cq = cb.createQuery(EmployerEvents.class);
		Root<EmployerEvents> root = cq.from(EmployerEvents.class);
		cq.select(root);

		Metamodel m = em.getMetamodel();
		EntityType<EmployerEvents> rEntity = m.entity(EmployerEvents.class);
		Expression job_exp = root.get(rEntity.getSingularAttribute("jobSeeker"));
		Predicate p1 = cb.equal(job_exp, jobSeeker);
		cq.where(p1);

		List<EmployerEvents> dataObj = em.createQuery(cq).getResultList();
		em.getTransaction().commit();
		em.close();
		return dataObj;
	}

	public List<EmployerEvents> findEmployerEventsByJob(Job job) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<EmployerEvents> cq = cb.createQuery(EmployerEvents.class);
		Root<EmployerEvents> root = cq.from(EmployerEvents.class);
		cq.select(root);

		Metamodel m = em.getMetamodel();
		EntityType<EmployerEvents> rEntity = m.entity(EmployerEvents.class);
		Expression job_exp = root.get(rEntity.getSingularAttribute("job"));
		Predicate p1 = cb.equal(job_exp, job);
		cq.where(p1);

		List<EmployerEvents> dataObj = em.createQuery(cq).getResultList();
		em.getTransaction().commit();
		em.close();
		return dataObj;
	}

	
}
