package com.niit.dao;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import com.niit.domain.Employer;
import com.niit.domain.Job;
import com.niit.domain.JobSeeker;
import com.niit.domain.PurchaseEvents;
import com.niit.topjobs.PersistenceManager;

public class EmployerDAO {


	public void merge(Employer entity) {
		// TODO Auto-generated method stub
		EntityManager em= PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		em.merge(entity);
		em.getTransaction().commit();
		em.close();
	}


	public void purchaseLogin(Employer emp)
	{
		Date date=new Date();
		emp.setPurchaseDate(date);
		emp.setIsActive(true);
		merge(emp);
	}


	public  Employer findEmployerByUsername(Employer emp) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		emp=em.find(Employer.class, emp.getUser_name());
		em.getTransaction().commit();
		em.close();
		return emp;
	}
	
	
	
	
}


