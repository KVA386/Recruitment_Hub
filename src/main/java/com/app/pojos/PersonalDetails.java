package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "personal_details")
public class PersonalDetails extends BaseEntity {

	@Column(length = 5000)
	private String objective;
	@Column(length = 1000)
	private String linkedin;
	@Column(length = 1000)
	private String github;
	@Column(length = 100)
	private String email;
	@Column(length = 15)
	private String phone;
	@Column(length = 5000)
	private String address;
	@Column(length = 50)
	private String name;
	
	@OneToOne
	@JoinColumn(name = "user_id")
	private User user_id;
	
	
	
	public PersonalDetails() {
	System.out.println("Personal Details Table Created !!");
	}

	public PersonalDetails(String objective, String linkedin, String github, String email, String phone, String address,
			String name) {
		super();
		this.objective = objective;
		this.linkedin = linkedin;
		this.github = github;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.name = name;
	}

	public String getObjective() {
		return objective;
	}

	public void setObjective(String objective) {
		this.objective = objective;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}

	public String getGithub() {
		return github;
	}

	public void setGithub(String github) {
		this.github = github;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "PersonalDetails [objective=" + objective + ", linkedin=" + linkedin + ", github=" + github + ", email="
				+ email + ", phone=" + phone + ", address=" + address + ", name=" + name + "]";
	}

	
}
