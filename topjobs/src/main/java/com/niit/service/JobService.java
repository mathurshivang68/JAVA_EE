/**
 * 
 */
package com.niit.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import com.niit.dao.JobsDao;
import com.niit.domain.Job;
import com.niit.ro.JobRequest;
import com.niit.topjobs.PersistenceManager;

/**
 * @author Shivang
 *
 */
public class JobService {
	
	public void createANewJob(JobRequest req) {
		Job job = new Job();
		job.setJobName(req.getJobName());
		job.setJobTitle(req.getJobTitle());
		job.setJobDescription(req.getJobDescription());

		
		JobsDao jd = new JobsDao();
		jd.persist(job);
		
		
	}

	public List<Job> getAllJobs() {
		// TODO Auto-generated method stub
		JobsDao jd=new JobsDao();
		return jd.findAllJobs();
		
	}

	public Job showJobById(Job job)
	{		
		JobsDao jd=new JobsDao();
		return jd.findJobByID(job);
	}
		
	}		



	