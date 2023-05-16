package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="SkillDetails")
public class SkillDetails extends BaseEntity {
	@Column(length = 1000)
	private String ss;
	@Column(length = 1000)
	private String it;
	@Column(length = 1000)
	private String prg;
	@Column(length = 1000)
	private String wt;
	
	@OneToOne
	@JoinColumn(name = "user_id")
	private User user_id;
    
	public SkillDetails() {
		System.out.print("SkillDetails Table Created!!");
	}
	

	
	public SkillDetails(String ss, String it, String prg, String wt) {
		super();
		this.ss = ss;
		this.it = it;
		this.prg = prg;
		this.wt = wt;
		
	}
	public String getSs() {
		return ss;
	}



	public void setSs(String ss) {
		this.ss = ss;
	}

	public String getIt() {
		return it;
	}

	public void setIt(String it) {
		this.it = it;
	}

	public String getPrg() {
		return prg;
	}

	public void setPrg(String prg) {
		this.prg = prg;
	}

	public String getWt() {
		return wt;
	}

	public void setWt(String wt) {
		this.wt = wt;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}
	
	@Override
	public String toString() {
		return "SkillDetails [ss=" + ss + ", it=" + it + ", prg=" + prg + ", wt=" + wt + "]";
	}
	
}
