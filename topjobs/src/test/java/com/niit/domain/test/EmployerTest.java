package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.niit.dao.EmployerDAO;
import com.niit.domain.Employer;
import com.niit.domain.UserRole;

class EmployerTest {

	@Test
	void createEmployer() {
		Employer emp = new Employer();
		emp.setFname("Diwakar");
		emp.setLname("Saini");
		emp.setUser_name("d9");
		emp.setUser_pass("p9");
		emp.setIsActive(true);
		
		UserRole ur = new UserRole();
		ur.setRole_name("Employer");
		ur.setUser_name("d9");
		
		emp.setUserRole(ur);
		EmployerDAO eDAO = new EmployerDAO();
		eDAO.merge(emp);
	}

}
