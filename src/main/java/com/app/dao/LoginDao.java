package com.app.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.AchivementsDetails;
import com.app.pojos.EducationalDetails;
import com.app.pojos.PersonalDetails;
import com.app.pojos.ProjectDetails;
import com.app.pojos.SkillDetails;
import com.app.pojos.Tpo;
import com.app.pojos.User;

@Repository
public class LoginDao implements LoginDaoInterface {
@Autowired 
private EntityManager mgr;

@Override
public String registerUser(User user) {
	// TODO Auto-generated method stub
	User u=user;
	PersonalDetails pd=new PersonalDetails();
	EducationalDetails ed=new EducationalDetails();
    SkillDetails sd = new SkillDetails();
    ProjectDetails rd = new ProjectDetails();
    AchivementsDetails ad = new AchivementsDetails();
	u.setPersonal_details(pd);
	u.setEducational_details(ed);
	u.setSkill_details(sd);
	u.setProject_details(rd);
	u.setAchivements_details(ad);
	mgr.persist(u);
	return "User registration is done!!!";
	
}


@Override
public User verifyLogin(String username, String password) {
	// TODO Auto-generated method stub
	try {

		String jpql = "select u from User u where u.username=:username and u.password=:password";
		User user = mgr.createQuery(jpql, User.class).setParameter("username",username)
				.setParameter("password", password).getSingleResult();
		if (user != null && !user.getStatus().equals("Revoked"))
			return user;
		return null;

	} catch (Exception e) {
		return null;
		// TODO: handle exception
	}
}

@Override
public String registerTpo(Tpo tpo) {
	// TODO Auto-generated method stub
	Tpo t=tpo;
	mgr.persist(t);
	return "Tpo registration is done!!!";
}

@Override
public Tpo checkTpo() {
	// TODO Auto-generated method stub
	try {
		String jpql = "select t from Tpo t";
		Tpo t = mgr.createQuery(jpql, Tpo.class).getSingleResult();
		if (t != null)
			return t;
		return null;
	} catch (Exception e) {
		return null;
	}
	
}

@Override
public Tpo verifyTpo(String username, String password) {
	// TODO Auto-generated method stub
	try {

		String jpql = "select t from Tpo t where t.username=:username and t.password=:password";
		Tpo tpo = mgr.createQuery(jpql,Tpo.class).setParameter("username",username)
				.setParameter("password", password).getSingleResult();
		if (tpo != null && !tpo.getStatus().equals("Revoked"))
			return tpo;
		return null;

	} catch (Exception e) {
		return null;
		// TODO: handle exception
	}
}

@Override
public List<User> fetchAllUsers() {
	// TODO Auto-generated method stub
	String jpql="select c from User c ";
	List<User> list=mgr.createQuery(jpql, User.class).getResultList();
	return list;
}


@Override
public String changePassword(User user, String upassword) {
	// TODO Auto-generated method stub
		User u=mgr.find(User.class, user.getId());
		u.setPassword(upassword);
		return "Your Password is Changed !!";
}

@Override
public boolean checkusername(String username) {
	// TODO Auto-generated method stub
	try {
		String jpql = "select u from User u where u.username=:username";
		User user = mgr.createQuery(jpql, User.class).setParameter("username", username).getSingleResult();
		if (user != null)
			return true;
		return false;
	} catch (Exception e) {
		return false;
	}
}
@Override
public User getUser(String username) {
	// TODO Auto-generated method stub
	try {
		String jpql = "select u from User u where u.username=:username";
		User user = mgr.createQuery(jpql, User.class).setParameter("username", username).getSingleResult();
		if (user != null)
			return user;
		return null;
	} catch (Exception e) {
		return null;
	}
}

}
