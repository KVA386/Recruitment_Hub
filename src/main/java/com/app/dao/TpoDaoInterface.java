package com.app.dao;

import java.util.List;

import com.app.pojos.AchivementsDetails;
import com.app.pojos.Appliedstudents;
import com.app.pojos.CreateDrive;
import com.app.pojos.Notice;
import com.app.pojos.Selected;
import com.app.pojos.Tpo;
import com.app.pojos.User;


public interface TpoDaoInterface {
    String registerTpo(Tpo tpo);
	String saveTpodriveDetails(Tpo tpo, CreateDrive cd);
	List<CreateDrive> fetchAllDrive();
	CreateDrive fetchCompanyById(int cid);
	String deletedrive(int cid);
	String savenotice(Notice n);
	List<Notice> fetchAllnotice();
	String saveselected(CreateDrive cd, Selected sd);
	List<Selected> fetchAllSelected();

}
