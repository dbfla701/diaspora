package egovframework.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.example.Dto.ApplyDto;
import egovframework.example.Dto.BoardDto;
import egovframework.example.Dto.HomeDto;
import egovframework.example.model.ServiceController;


@Controller
public class CommitteeController {
	
	@Autowired
	private ServiceController service;
	
	@RequestMapping(value="/admin/reviewForm.do", method= RequestMethod.GET)
	public String ckurl(){
		return "/admin/reviewForm";
	}
	
	@RequestMapping(value="/committee.do", method= RequestMethod.GET)
	public String reg2021(ApplyDto dto, Model model){
		
		ApplyDto lists = service.reg2021();
		model.addAttribute("dto", lists);
		return "committee";
	}
	
	@RequestMapping(value="/committee2022.do", method= RequestMethod.GET)
	public String reg2022(ApplyDto dto, Model model){
		
		ApplyDto lists = service.reg2022();
		model.addAttribute("dto", lists);
		return "committee2022";
	}
	
	@RequestMapping(value="/committeeDetail.do", method= RequestMethod.GET)
	public String committeeDetail(){
		return "committeeDetail";
	}
	
	@RequestMapping(value="/chucheon.do", method= RequestMethod.GET)
	public String chucheon(){
		
		return "chucheon";
	}
	
	
	
	

}
