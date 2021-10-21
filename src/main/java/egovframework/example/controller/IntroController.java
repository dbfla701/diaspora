package egovframework.example.controller;

import javax.mail.MessagingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class IntroController {
	
	private Logger log = LoggerFactory.getLogger(IntroController.class);
	
	@RequestMapping(value = "/intro1.do", method = RequestMethod.GET)
	public String intro1() throws MessagingException {
		log.info("intro1");
		return "/intro1";
	}
	
	@RequestMapping(value = "/intro2.do", method = RequestMethod.GET)
	public String intro2() throws MessagingException {
		log.info("intro2");
		return "/intro2";
	}
	
	@RequestMapping(value = "/intro3.do", method = RequestMethod.GET)
	public String intro3() throws MessagingException {
		log.info("intro3");
		return "/intro3";
	}
	
	@RequestMapping(value = "/identity.do", method = RequestMethod.GET)
	public String identity() throws MessagingException {
		log.info("identity");
		return "/identity";
	}
	

}
