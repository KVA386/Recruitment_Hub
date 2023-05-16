package com.app.pojos;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_login")
public class User extends BaseEntity {
	
	@Column(length = 50)
	private String username;
	@Column(length = 20)
	private String password;
	@Column(length = 10)
	private String status;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_personal_details_id")
	private PersonalDetails personal_details;
	
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_educational_details_id")
	private EducationalDetails educational_details;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_skill_details_id")
	private SkillDetails skill_details;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_project_details_id")
	private ProjectDetails project_details;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_achivements_details_id")
	private AchivementsDetails achivements_details;
	
	
	
	public User() {
		super();
	}

	public User(String username, String password, String status) {
		super();
		this.username = username;
		this.password = password;
		this.status = status;
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
	

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

	public PersonalDetails getPersonal_details() {
		return personal_details;
	}

	public void setPersonal_details(PersonalDetails personal_details) {
		this.personal_details = personal_details;
	}
	public void setEducational_details(EducationalDetails educational_details) {
		this.educational_details = educational_details;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", status=" + status + "]";
	}

	public EducationalDetails getEducational_details() {
		// TODO Auto-generated method stub
		return educational_details;
	}

	public SkillDetails getSkill_details() {
		return skill_details;
	}

	public void setSkill_details(SkillDetails skill_details) {
		this.skill_details = skill_details;
	}

	public ProjectDetails getProject_details() {
		return project_details;
	}

	public void setProject_details(ProjectDetails project_details) {
		this.project_details = project_details;
	}
	

	public AchivementsDetails getAchivements_details() {
		return achivements_details;
	}

	public void setAchivements_details(AchivementsDetails achivements_details) {
		this.achivements_details = achivements_details;
	}
	
	
	
	

}
