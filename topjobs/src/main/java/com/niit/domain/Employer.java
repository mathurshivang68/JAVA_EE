package com.niit.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
@PrimaryKeyJoinColumn(name = "user_name")
public class Employer extends User{

	boolean isActive;
	int loginsPurchased;
	Date purchaseDate;
	Date endDate;
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public int getLoginsPurchased() {
		return loginsPurchased;
	}
	public void setLoginsPurchased(int loginsPurchased) {
		this.loginsPurchased = loginsPurchased;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	
	
	
}
