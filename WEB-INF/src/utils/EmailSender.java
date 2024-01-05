package utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;

public class EmailSender {
    static Properties props = new Properties();

    static {
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", "smtp-mail.outlook.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
    }

    public static void sendEmail(String toEmail, String subject, String message) {
        Session session = Session.getInstance(props, new EmailAuthenticator());

        MimeMessage mm = new MimeMessage(session);

        try {
            mm.setFrom(AppUtility.fromEmail);
            mm.setRecipients(Message.RecipientType.TO, toEmail);
            mm.setSubject(subject);
            mm.setContent(message, "text/html");

            Transport.send(mm);
        } catch(MessagingException e) {
            e.printStackTrace();
        }
    }

    public static void sendPasswordRecoveryEmail(String email, String OTP) {
        String passwordRecoveryEmail = "<h1>Welcome to The Story Shop</h1>"+
            "<br><h2>The OTP for password recovery is <strong>"+ OTP +"</strong> </h2><br>" + 
            "<h2>Enter this OTP to change the password</h2>";

        sendEmail(email, "Password Recovery", passwordRecoveryEmail);

    }

    public static void resendOTPEmail(String email, String OTP) {
        String resendOTPEmail
            = "<h1>Welcome to The Story Shop</h1>"+
            "<br><h2>The resended OTP is <strong>"+ OTP +"</strong></h2>";

        sendEmail(email, "Email Verification", resendOTPEmail);
    }

    public static void sendAccVerificationMail(String email, String OTP) {
        String verificationEmail 
            = "<h1>Welcome to The Story Shop</h1>"+
            "<br><h2>The OTP for your email verification is <strong>"+ OTP +"</strong></h2>";
        
        sendEmail(email, "Email Verification", verificationEmail);
    }
}

class EmailAuthenticator extends Authenticator {
    public PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(AppUtility.fromEmail, AppUtility.fromEmailPassword);
    }
} 
