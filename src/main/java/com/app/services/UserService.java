package com.app.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.UserDaoInterface;
import com.app.pojos.AchivementsDetails;
import com.app.pojos.Appliedstudents;
import com.app.pojos.CreateDrive;
import com.app.pojos.EducationalDetails;
import com.app.pojos.Pendingapplication;
import com.app.pojos.PersonalDetails;
import com.app.pojos.ProjectDetails;
import com.app.pojos.SkillDetails;
import com.app.pojos.User;

@Service
@Transactional
public class UserService implements UserServiceInterface {

	@Autowired
	private UserDaoInterface userDao;

	@Override
	public String savePersonalDetails(User user, PersonalDetails pd) {
		// TODO Auto-generated method stub
		return userDao.savePersonalDetails(user, pd);
	}

	@Override
	public String saveEducationalDetails(User user, EducationalDetails ed) {
		// TODO Auto-generated method stub
		return userDao.saveEducationalDetails(user, ed);
	}

	@Override
	public String saveSkillDetails(User user, SkillDetails sd) {
		// TODO Auto-generated method stub
		return userDao.saveSkillDetails(user, sd);
	}

	@Override
	public String saveProjectDetails(User user, ProjectDetails rd) {
		// TODO Auto-generated method stub
		return userDao.saveProjectDetails(user, rd);
	}

	@Override
	public String saveAchivementsDetails(User user, AchivementsDetails ad) {
		// TODO Auto-generated method stub
		return userDao.saveAchivementsDetails(user, ad);
	}

	


	@Override
	public String SaveAppliedstudents(User user, Appliedstudents as, CreateDrive cd) {
		// TODO Auto-generated method stub
		return userDao.SaveAppliedstudents(user,as,cd);
	}

	@Override
	public String deletedrive(int cid) {
		// TODO Auto-generated method stub
		return userDao.deletedrive(cid);
	}

	@Override
	public List<Appliedstudents> fetchAllappliedstudents(CreateDrive cd) {
		// TODO Auto-generated method stub
		return userDao.fetchAllappliedstudents(cd);
	}

	@Override
	public String savependingdriveDetails(Pendingapplication pd) {
		// TODO Auto-generated method stub
		return userDao.savependingdriveDetails(pd);
	}

	@Override
	public List<Appliedstudents> fetchAllappliedstudents(User user) {
		// TODO Auto-generated method stub
		return userDao.fetchAllappliedstudents(user);
	}

	@Override
	public List<Pendingapplication> fetchPendingDrive(String username) {
		// TODO Auto-generated method stub
		return userDao.fetchPendingDrive(username);
	}

	@Override
	public String saveselectedstudents() {
		// TODO Auto-generated method stub
		return userDao.saveselectedstudents();
	}

	
	
	
	

}