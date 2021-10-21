package egovframework.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.Dto.ApplyDto;
import egovframework.example.model.IService;

@Controller
public class ArchiveController {

	private Logger log = LoggerFactory.getLogger(NewsController.class);
	
	@Autowired
	private IService service;
	
	@ResponseBody
	@RequestMapping(value = "/susangjak.do", method = RequestMethod.POST)
	public boolean permitget(@RequestParam String email) {
		System.out.println(email);
		service.susangUpdate(email);
		System.out.println("됐나");
		return true;
	}
	
	@RequestMapping(value="/susangjak.do", method= RequestMethod.GET)
	public String newsList(Model model){
		ApplyDto susang = service.susangSelect();
		model.addAttribute("dto", susang);
		log.info("susangjak {}", susang);
		return "/susangjak";
	}
	
	@RequestMapping(value="/simsa.do", method= RequestMethod.GET)
	public String simsa(Model model){
		log.info("simsa");
		return "/simsa";
	}
	
	
}
