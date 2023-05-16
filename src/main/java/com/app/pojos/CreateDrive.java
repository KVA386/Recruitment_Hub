package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CreateDrive")
public class CreateDrive extends BaseEntity {
	@Column(length = 1000)
	private String cname;
	@Column(length = 1000)
	private String package1;
	@Column(length = 1000)
	private String location;
	@Column(length = 1000)
	private String link;
	@Column(length = 1000)
	private String criteria;
	@Column(length = 1000)
	private String jD;
	@Column(length = 1000)
	private String process;
	@Column(length = 1000)
	private String jobdesignation;
	@Column(length = 1000)
	private String date;
	@Column(length = 1000)
	private Integer tenth;
	@Column(length = 1000)
	private Integer twleve;
	@Column(length = 1000)
	private Float cgpa;
	
	
	@ManyToOne
	@JoinColumn(name = "tpo_id")
	private Tpo tpo_id;
	
	

	public CreateDrive() {
		System.out.println("Educational Details Table Created !!");
		}
		




	public String getJobdesignation() {
		return jobdesignation;
	}




	public void setJobdesignation(String jobdesignation) {
		this.jobdesignation = jobdesignation;
	}




	public String getDate() {
		return date;
	}




	public void setDate(String date) {
		this.date = date;
	}

	public Integer getTenth() {
		return tenth;
	}




	public void setTenth(Integer tenth) {
		this.tenth = tenth;
	}




	public Integer getTwleve() {
		return twleve;
	}




	public void setTwleve(Integer twleve) {
		this.twleve = twleve;
	}






	public Float getCgpa() {
		return cgpa;
	}





	public void setCgpa(Float cgpa) {
		this.cgpa = cgpa;
	}











	public CreateDrive(String cname, String package1, String location, String link, String criteria, String jD,
			String process, String jobdesignation, String date, Integer tenth, Integer twleve, Float cgpa, Tpo tpo_id) {
		super();
		this.cname = cname;
		this.package1 = package1;
		this.location = location;
		this.link = link;
		this.criteria = criteria;
		this.jD = jD;
		this.process = process;
		this.jobdesignation = jobdesignation;
		this.date = date;
		this.tenth = tenth;
		this.twleve = twleve;
		this.cgpa = cgpa;
		this.tpo_id = tpo_id;
	}





	public CreateDrive(String cname2, String package12, String location2, String link2, String criteria2, String jD2,
			String process2, String jobdesignation2, String date2, Integer tenth2, Integer twleve2, Float cgpa2) {
		// TODO Auto-generated constructor stub
	}





	@Override
	public String toString() {
		return "CreateDrive [cname=" + cname + ", package1=" + package1 + ", location=" + location + ", link=" + link
				+ ", criteria=" + criteria + ", jD=" + jD + ", process=" + process + ", jobdesignation="
				+ jobdesignation + ", date=" + date + ", tenth=" + tenth + ", twleve=" + twleve + ", cgpa=" + cgpa
				+ ", tpo_id=" + tpo_id + "]";
	}




	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getPackage1() {
		return package1;
	}

	public void setPackage1(String package1) {
		this.package1 = package1;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getCriteria() {
		return criteria;
	}

	public void setCriteria(String criteria) {
		this.criteria = criteria;
	}

	public String getjD() {
		return jD;
	}

	public void setjD(String jD) {
		this.jD = jD;
	}

	public String getProcess() {
		return process;
	}

	public void setProcess(String process) {
		this.process = process;
	}

	public Tpo getTpo_id() {
		return tpo_id;
	}

	public void setTpo_id(Tpo tpo_id) {
		this.tpo_id = tpo_id;
	}
	
	
}
