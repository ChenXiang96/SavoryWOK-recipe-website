package com.SavoryWok.utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class MailUitls {
	/**
	 *
	 * @param to	:recipient
	 * @param code	:Activation Code
	 */
	public static void sendMail(String to,String code){
		
		Properties props = new Properties();
		
		props.setProperty("mail.host", "localhost");
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				
				return new PasswordAuthentication("service@shop.com", "service");
			}
		});
		
		
		Message message = new MimeMessage(session);
		
		try {
			
			message.setFrom(new InternetAddress("service@shop.com"));
			
			message.addRecipient(RecipientType.TO, new InternetAddress(to));
			
			message.setSubject("Official activation email from ‘Savory Wok’");
			
			message.setContent("<h1>Official activation email from ‘Savory Wok’! Click the link below to complete the activation process!</h1>"
				    + "<h3>"
				    + "<a href='http://localhost:8080/SavoryWok/active/"+code+"'>http://localhost:8080/SavoryWok/active/"+code+"</a>"
				    + "</h3>", "text/html;charset=UTF-8");
		
			Transport.send(message);
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void main(String[] args) {
		sendMail("aaa@shop.com","11111111111111");
	}
}
