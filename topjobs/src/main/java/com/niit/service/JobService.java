/**
 * 
 */
package com.niit.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import com.niit.dao.EmployerDao;
import com.niit.dao.JobsDao;
import com.niit.domain.Employer;
import com.niit.domain.Job;
import com.niit.domain.JobSeeker;
import com.niit.domain.JobSeekerEvents;
import com.niit.domain.User;
import com.niit.ro.EmployerRequest;
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
		job.setUser(req.getUser());
		
		
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
		return jd.findJobByIdEager(job);
	}
		
	public List<JobSeekerEvents> showAppliedJobs(JobSeeker jobs)
	{
		JobsDao jd=new JobsDao();
		return jd.getAppliedJobs(jobs);
	}
	
	public List<Job> showEmployerJobs(Employer emp)
	{
		JobsDao jd=new JobsDao();
		return jd.ViewJobByEmployer(emp);
	}

	
	public void purchaseLogin(EmployerRequest req)
	{
		
		
		Employer emp=new Employer();
		emp.setUserName(req.getEmp().getUserName());
		emp.setPurchaseDate(req.getPurchasedate());
		emp.setActive(req.isActive());
		emp.setLoginsPurchased(req.getLoginspurchased());
		
		EmployerDao empd=new EmployerDao();
		empd.PurchaseLogin(emp);
		
	}

}
	

	