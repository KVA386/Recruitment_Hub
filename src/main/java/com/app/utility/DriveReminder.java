package com.app.utility;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

public class DriveReminder {
	public void sendEmail(String to,String companyName) {
		System.out.println("in TL EMAIL");
		final String fromEmail = "kirtanamaru123@gmail.com"; //requires valid gmail id
		final String password = "gueyyabzcehmqzen"; // correct password for gmail id
		final String toEmail = to; // can be any email id 
		String msgbody="Dear Student,New placement drive is posted on the portal for company name:"+ companyName +" Please login to portal and apply ";
		System.out.println("TLSEmail Start");
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
		props.put("mail.smtp.port", "587"); //TLS Port
		props.put("mail.smtp.auth", "true"); //enable authentication
		props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
		Authenticator auth = new Authenticator() {
			//override the getPasswordAuthentication method
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(fromEmail, password);
			}
		};
		Session session = Session.getInstance(props, auth);
		
		EmailUtil.sendEmail(session, toEmail,"Recruitment_hub", msgbody);
		
	}
}
