package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Arrays;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.Tuple;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Root;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.niit.domain.Job;
import com.niit.domain.JobSeekerEvents;
import com.niit.topjobs.PersistenceManager;

class SelectApplicantTest {

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
	}

	@Test
	void findApplicantForEmployer() {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Job> cq= cb.createQuery(Job.class);
//		Root
		
		
	}
	
	
	@Test
	void showJobsInJobSeekerEventsByEmployerJPQL() {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
//		CriteriaBuilder cb = em.getCriteriaBuilder();
//		CriteriaQuery<Job> cq= cb.createQuery(Job.class);
//		Root<JobSeekerEvents> root = cq.from(JobSeekerEvents.class);
//		Join<JobSeekerEvents,Job> join = root.join("job");
//		cq.select(join).where(cb.equal(root.get("jobSeeker"),"d1"));
		
		
		
		
//		Query query = em.createQuery("SELECT js FROM JobSeekerEvents js JOIN js.job jb JOIN jb.emp e1 where e1.user_name='d8'");
//		List<JobSeekerEvents> list= query.getResultList();
//		for(JobSeekerEvents obj:list)
//			System.out.println(obj.getJobSeeker().getResume());
		
	}

//	CriteriaBuilder cb = em.getCriteriaBuilder();
//	CriteriaQuery<Phone> query = cb.createQuery(Phone.class);
//	Root<Teacher> teacher = query.from(Teacher.class);
//	Join<Teacher, Phone> phones = teacher.join("phones");
//	query.select(phones).where(cb.equal(teacher.get("firstName"), "prasad"));
	
	
	
	
	
}
