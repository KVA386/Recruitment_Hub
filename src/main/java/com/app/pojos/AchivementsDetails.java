package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;

import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="AchivementsDetails")
public class AchivementsDetails extends BaseEntity {
    
	@Column(length=5000)
	private String message;
	
	
	@OneToOne
	@JoinColumn(name="user_id")
	private User user_id;
	
	
	public AchivementsDetails() {
		System.out.print("AchivementsDetails Table Created!!");
	}

	
	public AchivementsDetails(String message) {
		super();
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "AchivementsDetails [message=" + message + ", user_id=" + user_id + "]";
	}
	
	
}
