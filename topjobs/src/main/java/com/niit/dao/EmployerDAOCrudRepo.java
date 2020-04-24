package com.niit.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.niit.domain.Employer;

@Repository
public interface EmployerDAOCrudRepo extends CrudRepository<Employer,String> {
	//Employer findEmployerByUsername(Employer emp);
}
