package com.app.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.LoginDaoInterface;
import com.app.pojos.Tpo;
import com.app.pojos.User;

@Service
@Transactional
public class LoginService implements LoginServiceInterface {
  @Autowired 
  private LoginDaoInterface loginDao;

@Override
public String registerUser(User user) {
	// TODO Auto-generated method stub
	return loginDao.registerUser(user);
}

@Override
public User verifyLogin(String username, String password) {
	// TODO Auto-generated method stub
	return loginDao.verifyLogin(username,password);
}

@Override
public String registerTpo(Tpo tpo) {
	// TODO Auto-generated method stub
	return loginDao.registerTpo(tpo);
}

@Override
public Tpo checkTpo() {
	// TODO Auto-generated method stub
	return loginDao.checkTpo();
}

@Override
public Tpo verifyTpo(String username, String password) {
	// TODO Auto-generated method stub
	return loginDao.verifyTpo(username,password);
}

@Override
public List<User> fetchAllUsers() {
	// TODO Auto-generated method stub
	return loginDao.fetchAllUsers();
}
@Override
public String changePassword(User user, String upassword) {
	// TODO Auto-generated method stub
	return loginDao.changePassword(user,upassword);
}
@Override
public boolean checkusername(String username) {
	// TODO Auto-generated method stub
	return loginDao.checkusername(username);
}
@Override
public User getUser(String username) {
	// TODO Auto-generated method stub
	return loginDao.getUser(username);
}
  
}
