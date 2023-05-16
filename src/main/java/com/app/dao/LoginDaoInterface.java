package com.app.dao;

import java.util.List;

import com.app.pojos.Tpo;
import com.app.pojos.User;

public interface LoginDaoInterface {

	String registerUser(User user);

	User verifyLogin(String username, String password);

	String registerTpo(Tpo tpo);

	Tpo checkTpo();

	Tpo verifyTpo(String username, String password);

	List<User> fetchAllUsers();

	String changePassword(User user, String upassword);

	boolean checkusername(String username);

	User getUser(String username);




}
