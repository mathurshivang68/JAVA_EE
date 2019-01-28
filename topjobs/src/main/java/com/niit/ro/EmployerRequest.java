package com.niit.ro;

import java.util.Date;

import com.niit.domain.Employer;

public class EmployerRequest {

	Employer emp;
	Date purchasedate, enddate;
	boolean isActive;
	int loginspurchased;
	
	
	public Employer getEmp() {
		return emp;
	}
	public void setEmp(Employer emp) {
		this.emp = emp;
	}
	public Date getPurchasedate() {
		return purchasedate;
	}
	public void setPurchasedate(Date purchasedate) {
		this.purchasedate = purchasedate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public int getLoginspurchased() {
		return loginspurchased;
	}
	public void setLoginspurchased(int loginspurchased) {
		this.loginspurchased = loginspurchased;
	}
	
	
	
}
