package egovframework.example.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.Dto.ApplyDto;
import egovframework.example.Dto.BoardDto;
import egovframework.example.Dto.HomeDto;
import egovframework.example.Dto.NewsDto;
import egovframework.example.ip.ClientUtils;
import egovframework.example.model.ServiceController;

@Controller
public class BoardController {

	@Autowired
	private ServiceController service;
	
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	private Logger log = LoggerFactory.getLogger(BoardController.class);

	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(Model model, HomeDto dto, Principal principal) {
		
/*		HomeDto lists = service.ckselect();
		model.addAttribute("dto", lists);
		
		List<NewsDto> newsList = service.newsSelect();
		model.addAttribute("newsdto", newsList);

		ApplyDto reviews = service.reviewSelect();
		model.addAttribute("reviews", reviews);
		
		ApplyDto susang = service.susangSelect();
		model.addAttribute("sudto", susang);*/

		return "main";
	}

	@RequestMapping(value = "/joinUser.do", method = RequestMethod.GET)
	public String joinUser(BoardDto dto) {
		log.info("회원가입 get"+dto);
		return "joinUser";
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String joinUserP(BoardDto dto, @RequestParam String pw) {

		String encPassword = passwordEncoder.encode(pw);
		dto.setPw(encPassword);
		service.joinUser(dto);
		log.info(dto.toString());
		System.out.println("회원가입 성공");
		return "redirect:/login.do";
	}

	@RequestMapping(value = "/admin/login.do", method = RequestMethod.GET)
	public String loging(BoardDto dto, Model model) {

		System.out.println("로그인 get");
		
		return "/admin/login";

	}

	@RequestMapping(value = "/logining.do", method = RequestMethod.POST)
	public String login(BoardDto dto, HttpSession session,
			Model model, HttpServletRequest request, @RequestParam String pw) {

		 dto = service.login(dto);
		/* boolean isPasswordMatch = passwordEncoder.matches(pw, dto.getPw()); */
		 
		int user = service.count(dto);
		log.info("user count {}", user);
		System.out.println(user);
		if (user == 1) {
			log.info("비번 일치");
			session.setAttribute("adminid", dto.getAdminid());
			model.addAttribute("dto", dto);
			session.setAttribute("pw", dto.getPw());
			String ip = ClientUtils.getRemoteIP(request); // IPv4
			dto.setIp(ip);
			service.history(dto); // insert
			log.info(ip);
			System.out.println("로그인 됨");
			return "redirect:/main";

		} else if (user==0) {
			log.info("user count {}", user);
			model.addAttribute("result", "fail");
			model.addAttribute("msg", "아이디 비번을 다시 확인해주세요");
			model.addAttribute("url", "/login.do");
			log.info("비번 불일치");
		}
		return "redirect";
	}
	
	
	// result.do = loginAfter.do
	@RequestMapping(value = "/admin/loginAfter.do", method = RequestMethod.GET)
	public String loginAfter(BoardDto dto, Model model, Authentication user) {
		UserDetails userdto = (UserDetails) user.getPrincipal();
		model.addAttribute("user", userdto.toString());
		log.info(userdto.toString());
		return "/admin/loginAfter";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return "/logout";
	}

	@RequestMapping(value = "/admin/pwUpdate", method = {RequestMethod.POST, RequestMethod.GET})
	public String pwUpdate() {
		
		return "/admin/pwUpdate";
	}

	@ResponseBody
	@RequestMapping(value = "/pwUpdate.do", method = RequestMethod.POST)
	public String pwUpdateP(@RequestParam String newPw) {
		service.pwUpdate(newPw);
		// 2. dto.setPw(newPw) 로 해서 변경하기
		log.info("비번 변경");
		return "redirect:/admin/pwUpdate.do";
	}

	@ResponseBody
	@RequestMapping(value = "/admin/pwCheck.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String pwCheck(BoardDto dto, Model model, @RequestParam String inputPw)
			throws IOException {
		
		boolean result = service.pwCount(inputPw);
		System.out.println(result);
		
		if (result) { // 비번이 맞으면
			model.addAttribute("msg", "비밀번호가 일치합니다");
			model.addAttribute("url", "/admin/pwUpdate.do");
			return "redirect";
		}else{ // 비번이 틀리면
			model.addAttribute("result", "fail");
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다");
			model.addAttribute("url", "/admin/pwUpdate.do");
			return "redirect";
		}
	}

}






