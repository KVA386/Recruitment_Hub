package com.app.dao;

import java.util.List;

import com.app.pojos.AchivementsDetails;
import com.app.pojos.Appliedstudents;
import com.app.pojos.CreateDrive;
import com.app.pojos.EducationalDetails;
import com.app.pojos.Pendingapplication;
import com.app.pojos.PersonalDetails;
import com.app.pojos.ProjectDetails;
import com.app.pojos.SkillDetails;
import com.app.pojos.User;

public interface UserDaoInterface {

	String savePersonalDetails(User user, PersonalDetails pd);

	String saveEducationalDetails(User user, EducationalDetails ed);

	String saveSkillDetails(User user, SkillDetails sd);
	
	String saveProjectDetails(User user, ProjectDetails rd);

	String saveAchivementsDetails(User user, AchivementsDetails ad);

	String SaveAppliedstudents(User user, Appliedstudents as, CreateDrive cd);



	List<Appliedstudents> fetchAllappliedstudents(CreateDrive cd);

	String deletedrive(int cid);

	String savependingdriveDetails(Pendingapplication pd);

	List<Appliedstudents> fetchAllappliedstudents(User user);

	List<Pendingapplication> fetchPendingDrive(String username);

	String saveselectedstudents();

}
