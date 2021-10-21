package egovframework.example.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import egovframework.example.Dto.ApplyDto;

@Service
public class EmailUtilImpl{
	
	public void sendEmail(ApplyDto dto) throws MessagingException {
		
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		prop.put("mail.smtp.starttls.enable", "true");
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("dbfla705@gmail.com", "dbs8113.");
				}
			});
		
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("dbfla705@gmail.com")); // 발신자
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(dto.getEmail())); // 수신자 메일주소
			System.out.println(dto.getEmail());
			message.setSubject("부천시 디아스포라 추천서"); // 제목
			
			String htmlStr = "";
					
					htmlStr = 
							  "  <html>"
						                + " <head>"
						                + " </head>"
						               + "      <table>"
						                  +"<tbody>"
						                  +"<tr>"
						                  +"<td>"
						                  +"<h4>작품명</h4> : "
						                  + dto.getTitle()
						                  +"</td>"
						                     +"</tr>"
						                     +"<tr>"
						                        +"<td>"
						                        +"   <h4>지은이</h4> : "
						                        + dto.getAuthor()
						                        +"</td>"
						                     +"</tr>"
						                     +"<tr>"
						         +"   <td>"
						                           +"<h4>ISBN</h4> : "
						                           + dto.getIsbn()
						                           +"   </td>"
						                     +"</tr>"
						                     +"<tr>"
						                        +"<td>"
						                           +"<h4>원어</h4> : "
						                           + dto.getLang()
						                           +"</td>"
						                     +"</tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                           +"<h4>원작출판사</h4> : "
						                           + dto.getPublisher()
						                           +"</td>"
						                  +"   </tr>"
						                     +"<tr>"
						                        +"<td>"
						                        +"   <h4>출판연도</h4> : "
						                        + dto.getPubdate()
						                        +"   </td>"
						                     +"</tr>"
						                     +"<tr>"
						                     +"<tr>"
						                     +"   <td>"
						                        +"   <h4>번역작품명</h4> : "
						                        + dto.getTrans_name()
						                        +"</td>"
						                     +"</tr>"
						                  +"   <tr>"
						         +"      <td>"
						                        +"   <h4>옮긴이</h4> : "
						                        + dto.getTrans_author()
						                        +"   </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                     +"      <h4>ISBN</h4> : "
						                     + dto.getTrans_isbn()
						                     +"   </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						         +"      <td>"
						                     +"      <h4>출판사</h4> : "
						                     + dto.getTrans_edit()
						                     +"      </td>"
						                  +"   </tr>"
						                     +"<tr>"
						                     +"   <td>"
						                     +"      <h4>출판연도</h4> : "
						                     + dto.getTrans_date()
						                     +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                  +"      <td>"
						                  +"         <h4>이 책이 그 외 다중언어로 출판됐을 경우</h4> : "
						                  + dto.getContent1()
						                  +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                  +"         <h4>추천 사유</h4> : "
						                  + dto.getContent2()
						                  +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                     +"      <h4>추천자</h4> : "
						                     + dto.getId()
						                     +"   </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						         +"      <td>"
						                     +"      <h4>이메일</h4> : "
						                     + dto.getEmail()
						                     +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						               +"      </tr>"
						               +"   </tbody>      "   
						            +"   </table>"
						              + " </body>"
						              + " </html>";
			
			/*message.setText(htmlStr, "UTF-8");*/
			message.setContent(htmlStr, "text/html; charset=utf-8");
			Transport.send(message);
			System.out.println("EmailUtilImpl에서 됨");
			
		} catch (AddressException e) {
			e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
		}
	}
	
	public void NaversendEmail(ApplyDto dto){
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.naver.com");
		props.put("mail.smtp.port", 587);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.naver.com");
		props.put("mail.smtp.starttls.enable", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("dbfla705@gmail.com", "dbs8113.");
				}
			});
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("dbfla705@gmail.com")); // 발신자
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(dto.getEmail())); // 수신자 메일주소
			message.setSubject("부천시 디아스포라 추천서"); // 제목
			
			String htmlStr = "";
					
					htmlStr = 
							  "  <html>"
						                + " <head>"
						                + " </head>"
						               + "      <table>"
						                  +"<tbody>"
						                  +"<tr>"
						                  +"<td>"
						                  +"<h4>작품명</h4> : "
						                  + dto.getTitle()
						                  +"</td>"
						                     +"</tr>"
						                     +"<tr>"
						                        +"<td>"
						                        +"   <h4>지은이</h4> : "
						                        + dto.getAuthor()
						                        +"</td>"
						                     +"</tr>"
						                     +"<tr>"
						         +"   <td>"
						                           +"<h4>ISBN</h4> : "
						                           + dto.getIsbn()
						                           +"   </td>"
						                     +"</tr>"
						                     +"<tr>"
						                        +"<td>"
						                           +"<h4>원어</h4> : "
						                           + dto.getLang()
						                           +"</td>"
						                     +"</tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                           +"<h4>원작출판사</h4> : "
						                           + dto.getPublisher()
						                           +"</td>"
						                  +"   </tr>"
						                     +"<tr>"
						                        +"<td>"
						                        +"   <h4>출판연도</h4> : "
						                        + dto.getPubdate()
						                        +"   </td>"
						                     +"</tr>"
						                     +"<tr>"
						                     +"<tr>"
						                     +"   <td>"
						                        +"   <h4>번역작품명</h4> : "
						                        + dto.getTrans_name()
						                        +"</td>"
						                     +"</tr>"
						                  +"   <tr>"
						         +"      <td>"
						                        +"   <h4>옮긴이</h4> : "
						                        + dto.getTrans_author()
						                        +"   </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                     +"      <h4>ISBN</h4> : "
						                     + dto.getTrans_isbn()
						                     +"   </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						         +"      <td>"
						                     +"      <h4>출판사</h4> : "
						                     + dto.getTrans_edit()
						                     +"      </td>"
						                  +"   </tr>"
						                     +"<tr>"
						                     +"   <td>"
						                     +"      <h4>출판연도</h4> : "
						                     + dto.getTrans_date()
						                     +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                  +"      <td>"
						                  +"         <h4>이 책이 그 외 다중언어로 출판됐을 경우</h4> : "
						                  + dto.getContent1()
						                  +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                  +"         <h4>추천 사유</h4> : "
						                  + dto.getContent2()
						                  +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                     +"      <h4>추천자</h4> : "
						                     + dto.getId()
						                     +"   </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						         +"      <td>"
						                     +"      <h4>이메일</h4> : "
						                     + dto.getEmail()
						                     +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						               +"      </tr>"
						               +"   </tbody>      "   
						            +"   </table>"
						              + " </body>"
						              + " </html>"
						              ;
			
			/*message.setText(htmlStr, "UTF-8");*/
			message.setContent(htmlStr, "text/html; charset=utf-8");
			Transport.send(message);
			System.out.println("naver메일 전송 완료");
			
		} catch (AddressException e) {
			e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
		}
	}
	
	public void hanmailsendEmail(ApplyDto dto){
		
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.daum.net");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("dbfla705@gmail.com", "dbs8113.");
				}
			});
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("dbfla705@gmail.com")); // 발신자
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(dto.getEmail())); // 수신자 메일주소
			message.setSubject("부천시 디아스포라 추천서"); // 제목
			
			String htmlStr = "";
					
					htmlStr = 
							  "  <html>"
						                + " <head>"
						                + " </head>"
						               + "      <table>"
						                  +"<tbody>"
						                  +"<tr>"
						                  +"<td>"
						                  +"<h4>작품명</h4> : "
						                  + dto.getTitle()
						                  +"</td>"
						                     +"</tr>"
						                     +"<tr>"
						                        +"<td>"
						                        +"   <h4>지은이</h4> : "
						                        + dto.getAuthor()
						                        +"</td>"
						                     +"</tr>"
						                     +"<tr>"
						         +"   <td>"
						                           +"<h4>ISBN</h4> : "
						                           + dto.getIsbn()
						                           +"   </td>"
						                     +"</tr>"
						                     +"<tr>"
						                        +"<td>"
						                           +"<h4>원어</h4> : "
						                           + dto.getLang()
						                           +"</td>"
						                     +"</tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                           +"<h4>원작출판사</h4> : "
						                           + dto.getPublisher()
						                           +"</td>"
						                  +"   </tr>"
						                     +"<tr>"
						                        +"<td>"
						                        +"   <h4>출판연도</h4> : "
						                        + dto.getPubdate()
						                        +"   </td>"
						                     +"</tr>"
						                     +"<tr>"
						                     +"<tr>"
						                     +"   <td>"
						                        +"   <h4>번역작품명</h4> : "
						                        + dto.getTrans_name()
						                        +"</td>"
						                     +"</tr>"
						                  +"   <tr>"
						         +"      <td>"
						                        +"   <h4>옮긴이</h4> : "
						                        + dto.getTrans_author()
						                        +"   </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                     +"      <h4>ISBN</h4> : "
						                     + dto.getTrans_isbn()
						                     +"   </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						         +"      <td>"
						                     +"      <h4>출판사</h4> : "
						                     + dto.getTrans_edit()
						                     +"      </td>"
						                  +"   </tr>"
						                     +"<tr>"
						                     +"   <td>"
						                     +"      <h4>출판연도</h4> : "
						                     + dto.getTrans_date()
						                     +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                  +"      <td>"
						                  +"         <h4>이 책이 그 외 다중언어로 출판됐을 경우</h4> : "
						                  + dto.getContent1()
						                  +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                  +"         <h4>추천 사유</h4> : "
						                  + dto.getContent2()
						                  +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						                     +"   <td>"
						                     +"      <h4>추천자</h4> : "
						                     + dto.getId()
						                     +"   </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						         +"      <td>"
						                     +"      <h4>이메일</h4> : "
						                     + dto.getEmail()
						                     +"      </td>"
						                  +"   </tr>"
						                  +"   <tr>"
						               +"      </tr>"
						               +"   </tbody>      "   
						            +"   </table>"
						              + " </body>"
						              + " </html>";
			
			/*message.setText(htmlStr, "UTF-8");*/
			message.setContent(htmlStr, "text/html; charset=utf-8");
			Transport.send(message);
			System.out.println("EmailUtilImpl에서 됨");
			
		} catch (AddressException e) {
			e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
		}
	}

}

