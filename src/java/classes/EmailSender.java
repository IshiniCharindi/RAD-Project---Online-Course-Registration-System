
package classes;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailSender {

    public static boolean sendEmail(String sender, String subject, String messageBody) {
        final String username = "ishinidewamiththa@gmail.com"; 
        final String password = "ffjazvdghylaknxw"; 

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("ishinidewamiththa@gmail.com")); 
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("cst21038@std.uwu.ac.lk"));
            message.setSubject(subject);
            message.setText("From: " + sender +"\n Message: "+messageBody);

            Transport.send(message);

            System.out.println("Email sent successfully");
            return true;

        } catch (MessagingException e) {
             return false;
        }
    }
}
