package com.app.utility;

import java.util.Random;

public class Utility {

	public static final int EMAIL_MIN_LENGTH, EMAIL_MAX_LENGTH, PASSWORD_MIN_LENGTH, PASSWORD_MAX_LENGTH,PHONE_NO_LENGTH;
	public static final String SYMBOL_ONE, SYMBOL_TWO,SYMBOL_THREE,SYMBOL_FOUR;

	static {
		EMAIL_MIN_LENGTH = 9;
		EMAIL_MAX_LENGTH = 100;
		PASSWORD_MIN_LENGTH = 8;
		PASSWORD_MAX_LENGTH = 20;
		SYMBOL_ONE = "@";
		SYMBOL_TWO = "gmail.com";
		SYMBOL_THREE=".ac.in";
		SYMBOL_FOUR="yahoo.com";
		PHONE_NO_LENGTH=10;
	}

	public static boolean validateEmail(String username) {
		if (!( (username.length() > EMAIL_MIN_LENGTH && username.length() < EMAIL_MAX_LENGTH) && (username.contains(SYMBOL_ONE)
				&& username.endsWith(SYMBOL_TWO))||(username.contains(SYMBOL_ONE)&& username.endsWith(SYMBOL_THREE))||(username.contains(SYMBOL_ONE)&& username.endsWith(SYMBOL_FOUR)))){
			return false;

		}
		return true;
	}
	public static boolean validatePhone(String phone) {
		if ( phone.length() ==PHONE_NO_LENGTH){
			return true;

		}
		return false;
	}

	/*
	 * public static boolean validateDublicateEmail(String email,
	 * ArrayList<Customer> list) throws CustomerHandlingException { for (Customer c
	 * : list) { if (c != null && email.equals(c.getEmail())) { return false; } }
	 * return true; }
	 */

	public static boolean ValidatePassword(String password) {
		if (password.length() < PASSWORD_MIN_LENGTH || password.length() > PASSWORD_MAX_LENGTH)
			return false;
		else if (!password.matches("((?=.*\\d)(?=.*[a-z])(?=.*[#@$*]).{6,20})"))
			return false;
		return true;
	}
	public static int generateOTP() {
		// TODO Auto-generated method stub
		String digits = "0123456789";
		Random random_method = new Random();
		char[] otpchar = new char[4];
		String otp = "";
		for (int i = 0; i < 4; i++) {
			otpchar[i] = digits.charAt(random_method.nextInt(digits.length()));
			otp = otp + otpchar[i];
		}
		return Integer.parseInt(otp);
	}
	public static boolean ValidateName(String name) {
	
		return name.matches("^[ a-zA-Z]*$");
	}


}