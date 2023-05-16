package com.app.pojos;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity 
@Table(name="Tpo_table")
public class Tpo  extends BaseEntity  {
	@Column(length=50)
	  private String username;
	  @Column(length=20)
	  private String password;
	  @Column(length=10)
	  private String status;
	  
	 
	  public Tpo() {
		// TODO Auto-generated constructor stub
		  System.out.println("Tpo table is created!!");
	}
  
	  



	public Tpo(String username, String password,String status) {
		super();
		this.username = username;
		this.password = password;
		this.status=status;
		
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + "]";
	}

	public String getStatus() {
		// TODO Auto-generated method stub
		return status;
	}
	public void setStatus(String status) {
		// TODO Auto-generated method stub
		this.status=status;
}
}