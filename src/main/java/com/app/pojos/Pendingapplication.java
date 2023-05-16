package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="Pendingapplication")
public class Pendingapplication extends BaseEntity {
	@Column(length = 1000)
	private String username;
	@Column(length = 1000)
	private String cname;
	
	public Pendingapplication(String username, String cname) {
		super();
		this.username = username;
		this.cname = cname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Pendingapplication() {
		System.out.println("Pendingapplication table created!!");
	}
	
	
}