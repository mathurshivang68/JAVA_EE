package com.niit.domain.test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.niit.dao.EmployerDAO;
import com.niit.dao.PurchaseEventsDAO;
import com.niit.domain.Employer;
import com.niit.domain.PurchaseEvents;
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


	@Test
	void isActiveTest() {
		PurchaseEvents purchaseEvent = new PurchaseEvents();
		PurchaseEventsDAO pDAO = new PurchaseEventsDAO();

		Employer emp = new Employer();
		emp.setUser_name("d8");
		EmployerDAO eDAO = new EmployerDAO();
		emp = eDAO.findEmployerByUsername(emp);
		System.out.println(emp);
		emp.setIsActive(true);
		emp.setLoginsPurchased(1L);
		emp.setEndDate(new Date(119,01,01));
//		emp.setPurchaseDate(new Date(118,01,01));
//		if(emp.getEndDate()==null) {
//			Date endDate = new Date(emp.getPurchaseDate().getTime()+TimeUnit.DAYS.toMillis(purchaseEvent.getLogins()*30));
//			emp.setEndDate(endDate);
//		}
//		else if(emp.getEndDate()!=null) {
//			Date endDate = new Date(emp.getEndDate().getTime()+TimeUnit.DAYS.toMillis(purchaseEvent.getLogins()*30));
//			emp.setEndDate(endDate);
//		}
		eDAO.merge(emp);
	}
}
