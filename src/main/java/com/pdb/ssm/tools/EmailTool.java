package com.pdb.ssm.tools;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class EmailTool {

    public static void sendVerifyCodeEmail(String content, String email) {
        try {
            Properties props = new Properties();
            props.put("username", "XXX");
            props.put("password", "XXX");
            props.put("mail.transport.protocol", "smtp");
            props.put("mail.smtp.host", "smtp.163.com");
            props.put("mail.smtp.port", "465");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");  //使用JSSE的SSL socketfactory来取代默认的socketfactory
            props.put("mail.smtp.socketFactory.fallback", "false");  // 只处理SSL的连接,对于非SSL的连接不做处理

            Session mailSession = Session.getDefaultInstance(props);

            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress("firstmetcs@163.com"));
            msg.addRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            msg.setSubject("A new submission");
            msg.setContent(content, "text/html;charset=UTF-8");
            msg.saveChanges();

            Transport transport = mailSession.getTransport("smtp");
            transport.connect(props.getProperty("mail.smtp.host"), props
                    .getProperty("username"), props.getProperty("password"));
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        }
    }
}
