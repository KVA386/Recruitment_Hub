package com.app.pojos;

import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "drive_notifaction_watcher")
public class MonitorDriveWithUser extends BaseEntity {

	@OneToOne
	private User user;
	@OneToOne
	private CreateDrive drive;
	
	public MonitorDriveWithUser() {
		// TODO Auto-generated constructor stub
	}

	public MonitorDriveWithUser(User user, CreateDrive drive) {
		super();
		this.user = user;
		this.drive = drive;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public CreateDrive getDrive() {
		return drive;
	}

	public void setDrive(CreateDrive drive) {
		this.drive = drive;
	}

	@Override
	public String toString() {
		return "MonitorDriveWithUser [user=" + user + ", drive=" + drive + "]";
	}
	
	
}
