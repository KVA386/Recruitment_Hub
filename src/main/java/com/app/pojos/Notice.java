package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="Notice")
public class Notice extends BaseEntity {
	@Column(length = 1000)
	private String Notice;

	public String getNotice() {
		return Notice;
	}

	public void setNotice(String Notice) {
		this.Notice = Notice;
	}

	public Notice(String Notice) {
		super();
		this.Notice = Notice;
	}

	@Override
	public String toString() {
		return "notice [notice=" + Notice + "]";
	}

	
	public Notice() {
		System.out.println("Notice Table Created !!");
		}
	
}
