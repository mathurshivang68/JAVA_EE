package com.niit.service;

import com.niit.dao.EmployerEventsDAO;
import com.niit.domain.EmployerEvents;
import com.niit.ro.EmployerEventsRequest;

public class EmployerEventsService {

	public void applyJob(EmployerEventsRequest req)
	{
		EmployerEvents employerEvent=new EmployerEvents();
		employerEvent.setJob(req.getJob());
		employerEvent.setJobSeeker(req.getJobSeeker());
		EmployerEventsDAO employerEventsDAO=new EmployerEventsDAO();
		employerEventsDAO.persist(employerEvent);
	}
	
}
