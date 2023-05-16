package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity 
@Table(name="ProjectDetails")
public class ProjectDetails extends BaseEntity {
	@Column(length = 1000)
	private String title1;
	@Column(length = 1000)
	private String description1;
	@Column(length = 1000)
	private String title2;
	@Column(length = 1000)
	private String description2;
	
	
	
	@OneToOne
	@JoinColumn(name = "user_id")
	private User user_id;
	
	public ProjectDetails() {
		System.out.println("Project Details Table Created !!");
		}

	public ProjectDetails(String title1, String description1, String title2, String description2) {
		super();
		this.title1 = title1;
		this.description1 = description1;
		this.title2 = title2;
		this.description2 = description2;
	}

	public String getTitle1() {
		return title1;
	}

	public void setTitle1(String title1) {
		this.title1 = title1;
	}

	public String getDescription1() {
		return description1;
	}

	public void setDescription1(String description1) {
		this.description1 = description1;
	}

	public String getTitle2() {
		return title2;
	}

	public void setTitle2(String title2) {
		this.title2 = title2;
	}

	public String getDescription2() {
		return description2;
	}

	public void setDescription2(String description2) {
		this.description2 = description2;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "ProjectDetails [title1=" + title1 + ", description1=" + description1 + ", title2=" + title2
				+ ", description2=" + description2 + ", user_id=" + user_id + "]";
	}
	
	
}
