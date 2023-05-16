package com.app.utility;

import java.util.Date;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtil {
	public static void sendEmail(Session session, String toEmail, String subject, String body){
		System.out.println("in TLS EMAIL1");
		try
	    {
	      MimeMessage msg = new MimeMessage(session);
	      //set message headers
	      

	      msg.setFrom(new InternetAddress("kirtanamaru123@gmail.com","Email From Recruitment Hub"));

	      msg.setReplyTo(InternetAddress.parse("kirtanamaru123@gmail.com", false));

	      msg.setSubject(subject, "UTF-8");

	      msg.setText(body, "UTF-8");

	      msg.setSentDate(new Date());

	      msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
	      System.out.println("Message is ready");
    	  Transport.send(msg);  

	      System.out.println("EMail Sent Successfully!!");
	    }
	    catch (Exception e) {
	      e.printStackTrace();
	    }
	}
}
