package egovframework.example.mail;

import egovframework.example.Dto.ApplyDto;

public interface EmailUtil {
	void sendEmail(ApplyDto dto);
	
/*	void denyEmail(ApplyDto dto);*/

}
