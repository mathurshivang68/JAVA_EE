package com.niit.dao;

import java.util.Date;

import javax.persistence.EntityManager;

import com.niit.domain.Employer;
import com.niit.topjobs.PersistenceManager;

public class EmployerDAO {

	public  Employer findEmployerByUsername(Employer emp) {
		EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
		em.getTransaction().begin();
		emp=em.find(Employer.class, emp.getUser_name());
		em.getTransaction().commit();
		em.close();
		return emp;
	}

	public void merge(Employer entity) {
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


}
