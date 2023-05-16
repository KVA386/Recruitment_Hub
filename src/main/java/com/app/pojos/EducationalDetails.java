package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="EducationalDetails")
public class EducationalDetails extends BaseEntity {
	@Column(length = 20)
	private String degree;
	@Column(length = 1000)
	private String college1;
	@Column(length = 1000)
	private Float cgpa1;
	@Column(length = 30)
	private Integer year1;
	@Column(length = 15)
	private String course1;
	@Column(length = 5000)
	private String college2;
	@Column(length = 50)
	private Float marks1;
	@Column(length = 5000)
	private Integer year2;
	@Column(length = 1000)
	private String course2;
	@Column(length = 1000)
	private String school;
	@Column(length = 30)
	private Float marks2;
	@Column(length = 15)
	private Integer year3;
	
	@OneToOne
	@JoinColumn(name = "user_id")
	private User user_id;
	
	public EducationalDetails() {
	System.out.println("Educational Details Table Created !!");
	}
	
	public EducationalDetails(String degree, String college1, Float cgpa1, Integer year1, String course1,
			String college2, Float marks1, Integer year2, String course2, String school, Float marks2, Integer year3) {
		super();
		this.degree = degree;
		this.college1 = college1;
		this.cgpa1 = cgpa1;
		this.year1 = year1;
		this.course1 = course1;
		this.college2 = college2;
		this.marks1 = marks1;
		this.year2 = year2;
		this.course2 = course2;
		this.school = school;
		this.marks2 = marks2;
		this.year3 = year3;
	
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getCollege1() {
		return college1;
	}

	public void setCollege1(String College1) {
		this.college1 = College1;
	}

	public Float getCgpa1() {
		return cgpa1;
	}

	public void setCgpa1(Float cgpa1) {
		this.cgpa1 = cgpa1;
	}

	public Integer getYear1() {
		return year1;
	}

	public void setYear1(Integer year1) {
		this.year1 = year1;
	}

	public String getCourse1() {
		return course1;
	}

	public void setCourse1(String course1) {
		this.course1 = course1;
	}

	public String getCollege2() {
		return college2;
	}

	public void setCollege2(String college2) {
		this.college2 = college2;
	}

	public Float getMarks1() {
		return marks1;
	}

	public void setMarks1(Float marks1) {
		this.marks1 = marks1;
	}

	public Integer getYear2() {
		return year2;
	}

	public void setYear2(Integer year2) {
		this.year2 = year2;
	}

	public String getCourse2() {
		return course2;
	}

	public void setCourse2(String course2) {
		this.course2 = course2;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public Float getMarks2() {
		return marks2;
	}

	public void setMarks2(Float marks2) {
		this.marks2 = marks2;
	}

	public Integer getYear3() {
		return year3;
	}

	public void setYear3(Integer year3) {
		this.year3 = year3;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "EducationalDetails [Degree=" + degree + ", college1=" + college1 + ", cgpa1=" + cgpa1 + ", year1="
				+ year1 + ", course1=" + course1 + ", college2=" + college2 + ", marks1=" + marks1 + ", year2=" + year2
				+ ", course2=" + course2 + ", school=" + school + ", marks2=" + marks2 + ", year3=" + year3
				+ ", user_id=" + user_id + "]";
	}


	
}
