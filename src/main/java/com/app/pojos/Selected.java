package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity


@Table(name="selected")
public class Selected extends BaseEntity {
	
	@Column(length = 100)
	private String email;
	
	@Column(length = 50)
	private String name;
	
	@ManyToOne
	@JoinColumn(name="cid")
	private CreateDrive cid;
	
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
	

	public Selected(CreateDrive cd, String email, String name) {
		super();
		
		this.email = email;
		this.name=name;
	}
	
	
	@Override
	public String toString() {
		return "Selected [ email=" + email + ", name=" + name + "]";
	}
	public Selected() {
		System.out.println("Selected students Table Created !!");
		}

}
