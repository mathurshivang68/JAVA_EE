package com.niit.dao;

import javax.persistence.EntityManager;

import com.niit.domain.JobSeeker;
import com.niit.topjobs.PersistenceManager;

public class JobSeekerDao {

public  JobSeeker findJobSeekerByID(JobSeeker jobs) {
	EntityManager em = PersistenceManager.INSTANCE.getEntityManager();
    em.getTransaction()
        .begin();
    jobs=em.find(JobSeeker.class, jobs.getUserName());
    em.getTransaction()
    .commit();
em.close();
// PersistenceManager.INSTANCE.close();
return jobs;
    
}
}
