package com.niit.domain;
import javax.persistence.Access;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.AccessType;

@Entity
@Table(name="USERS", schema="TOPJOBS")
@Access(AccessType.FIELD)
@Inheritance(strategy=InheritanceType.JOINED)
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((user_name == null) ? 0 : user_name.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (user_name == null) {
			if (other.user_name != null)
				return false;
		} else if (!user_name.equals(other.user_name))
			return false;
		return true;
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
