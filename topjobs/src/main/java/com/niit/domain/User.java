package com.niit.domain;
import javax.persistence.Access;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.AccessType;

@Entity
@Table(name="USERS", schema="TOPJOBS")
@Access(AccessType.FIELD)
public class User {
	@Id
	@Column(name="user_name")
	String user_name;
	
	@Column(name="user_pass")
	String user_pass;
	
	//List<String> userRole;
	
	
	
	public String getUserName() {
		return user_name;
	}

	public void setUserName(String userName) {
		this.user_name = userName;
	}

	public String getUserPass() {
		return user_pass;
	}

	public void setUserPass(String userPass) {
		this.user_pass = userPass;
	}

	


}
