package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Appliedstudents")
public class Appliedstudents extends BaseEntity {
	

	@Column(length=5000)
	private String status;
	@Column(length=5000)
	private String email;
	@Column(length=5000)
	private String name;
	
	@ManyToOne
	@JoinColumn(name="cid")
	private CreateDrive cid;
	
	@ManyToOne
	@JoinColumn(name="user_id")
	private User user_id;
	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
		
	}

	

	public CreateDrive getCid() {
		return cid;
	}

	public void setCid(CreateDrive cid) {
		this.cid = cid;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}


	public Appliedstudents(String string, String string2, String string3) {
		// TODO Auto-generated constructor stub
		super();
		this.status= string3;
		this.email=string;
		this.name=string2;
		
	}

	public Appliedstudents() {
		System.out.print("AppliedStudents Table Created!!");
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


}
