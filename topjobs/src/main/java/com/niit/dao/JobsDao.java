package com.niit.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.ListJoin;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.hibernate.Hibernate;

import com.niit.domain.Job;
import com.niit.domain.JobSeekerEvents;
import com.niit.domain.User;
import com.niit.ro.JobRequest;
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
	
	public  Job findJobByID(Job job) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
	    em.getTransaction()
	        .begin();
	    Job entity=em.find(Job.class, job.getJobId());
	    em.getTransaction()
        .commit();
    em.close();
   // PersistenceManager.INSTANCE.close();
    return entity;
	    
	    
	}
	
	
	public Job findJobByIdEager(Job job)
	{	
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
    em.getTransaction()
    .begin();
Job entity=em.find(Job.class, job.getJobId());
Hibernate.initialize(entity.getJskill());
em.getTransaction()

.commit();
em.close();
	
return entity;

	}
	
//public List<Job> findAppliedJobs(User user)
//	{
//	EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
//	em.getTransaction().begin();
//	CriteriaBuilder cb=em.getCriteriaBuilder();
//	
//	CriteriaQuery<Job> cq=cb.createQuery(Job.class);
//	Root<Job> root=cq.from(Job.class);
//	cq.select(root);
//	
//	Metamodel m=em.getMetamodel();
//	EntityType<Job> Job_ = m.entity(Job.class);
//	Expression<?> ex = root.get(Job_.getSingularAttribute("usr"));
//	
//	
//	
//	List<Job> ajobs=em.createQuery(cq).getResultList();
//	em.getTransaction().commit();
//	em.close();
//	
//	
//	
//	return ajobs;
//		
//	
//	}

public List<JobSeekerEvents> getAppliedJobs(User username)
{
	EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
	em.getTransaction().begin();
	
	CriteriaBuilder cb=em.getCriteriaBuilder();
	
	CriteriaQuery<JobSeekerEvents> cq=cb.createQuery(JobSeekerEvents.class);
	Root<JobSeekerEvents> root=cq.from(JobSeekerEvents.class);
	cq.select(root);
	
	Metamodel m=em.getMetamodel();
	EntityType<JobSeekerEvents> Apj_=m.entity(JobSeekerEvents.class);
	
	Expression<?> ex=root.get(Apj_.getSingularAttribute("jobId"));
	Predicate p1=cb.equal(ex,username);
	
	cq.where(p1);
	
	List<JobSeekerEvents> ls=em.createQuery(cq).getResultList();
	em.getTransaction().commit();
	
	em.close();
	
	return ls;
	
	
	
}
}
