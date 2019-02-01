package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.junit.jupiter.api.Test;

import com.niit.dao.JobDAO;
import com.niit.dao.JobSeekerDAO;
import com.niit.domain.Employer;
import com.niit.domain.EmployerEvents;
import com.niit.domain.Job;
import com.niit.domain.JobSeeker;
import com.niit.domain.JobSeekerEvents;
import com.niit.ro.EmployerEventsRequest;
import com.niit.ro.JobSeekerEventsRequest;
import com.niit.service.EmployerEventsService;
import com.niit.service.JobSeekerEventsService;
import com.niit.topjobs.PersistenceManager;

class EmployerEventsTest {

	@Test
	public void findEmployerEventsByUsername() {
		JobSeeker jobSeeker = new JobSeeker();
		jobSeeker.setUser_name("d2");
		JobSeekerDAO jDAO = new JobSeekerDAO();
		jobSeeker = jDAO.findJobSeekerByUsername(jobSeeker);
		
		EntityManager em=PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		CriteriaBuilder cb=em.getCriteriaBuilder();
		CriteriaQuery<EmployerEvents> cq = cb.createQuery(EmployerEvents.class);
		Root<EmployerEvents> root=cq.from(EmployerEvents.class);
		cq.select(root);

		Metamodel m = em.getMetamodel();
		EntityType<EmployerEvents> rEntity = m.entity(EmployerEvents.class);
		Expression jobSeeker_exp = root.get(rEntity.getSingularAttribute("jobSeeker"));
		Predicate p1 = cb.equal(jobSeeker_exp,jobSeeker);
		cq.where(p1);

		List<EmployerEvents> dataObj= em.createQuery(cq).getResultList();
		em.getTransaction().commit();
		em.close();
		for(EmployerEvents obj:dataObj) {
			System.out.println(obj.getEventId());
		}
	}
	
	@Test
	public void findEmployerEventsByJob() {
		Job job = new Job();
		job.setJobId(1L);
		JobDAO jDAO = new JobDAO();
		job = jDAO.findJobByID(job);
		
		EntityManager em=PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		CriteriaBuilder cb=em.getCriteriaBuilder();
		CriteriaQuery<EmployerEvents> cq = cb.createQuery(EmployerEvents.class);
		Root<EmployerEvents> root=cq.from(EmployerEvents.class);
		cq.select(root);

		Metamodel m = em.getMetamodel();
		EntityType<EmployerEvents> rEntity = m.entity(EmployerEvents.class);
		Expression job_exp = root.get(rEntity.getSingularAttribute("job"));
		Predicate p1 = cb.equal(job_exp,job);
		cq.where(p1);

		List<EmployerEvents> dataObj= em.createQuery(cq).getResultList();
		em.getTransaction().commit();
		em.close();
		for(EmployerEvents obj:dataObj) {
			System.out.println(obj.getJobSeeker().getResume());
		}
	}
	
	


	@Test
	public void insertEmployerEvents() {
		EmployerEventsRequest req=new EmployerEventsRequest();
		JobSeeker jobSeeker=new JobSeeker();
		jobSeeker.setUser_name("d3");

		Job job=new Job();
		job.setJobId(102L);
		req.setJob(job);
		req.setJobSeeker(jobSeeker);
		
		EmployerEventsService ess=new EmployerEventsService();
		ess.applyJob(req);
	}
	
	
	
}
