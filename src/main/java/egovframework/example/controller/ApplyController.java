package egovframework.example.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.example.Dto.ApplyDto;
import egovframework.example.Dto.BoardDto;
import egovframework.example.mail.EmailUtilImpl;
import egovframework.example.model.IService;

@Controller
public class ApplyController {

	private Logger log = LoggerFactory.getLogger(ApplyController.class);
	
	@Autowired
	private IService service;

	@Autowired
	private EmailUtilImpl mailservice;

	// 글 작성 폼
	@RequestMapping(value = "/writeForm.do", method = RequestMethod.GET)
	public String writeView(ApplyDto dto) throws MessagingException {
		log.info("writeForm { }"+dto);
		return "/writeForm";
	}
	
	// 글 작성 폼
	@RequestMapping(value = "/writeForm2022.do", method = RequestMethod.GET)
	public String writeView2022(ApplyDto dto) throws MessagingException {
		log.info("writeForm { }"+dto);
		return "/writeForm";
	}

	// 글 작성 과정
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String write(ApplyDto dto, MultipartHttpServletRequest req, Model model,
			@RequestParam("email1") String email1, @RequestParam("email2") String email2) {
		
		String email = email1+"@"+email2;
		log.info(email);
		
		int result = service.emailChk(email);
		if (result != 0) {
			System.out.println("fail");
			model.addAttribute("msg", "하나의 이메일당 글 1개만 등록 가능 합니다.");
			model.addAttribute("url", "/main.do");
			return "redirect"; // 이거 페이지 이름임
		} else {
			
			String fileTag = "file";
			MultipartFile file = req.getFile(fileTag);
			int filesize = (int) file.getSize();
			String filename = file.getOriginalFilename(); // 파일 전송
			System.out.println("filename은" + filename);
			String savepath = "C:\\fileupload\\"; // 업로드 파일이 저장될 경로
			log.info("성공성공성공!!!!!!!!!!!!!!");
			model.addAttribute("filename", filename);
			
			try {
				file.transferTo(new File(savepath + filename));
				log.info("file.transferTo");
				dto.setFilename(filename);
				log.info("filename {}"+filename);
				dto.setFilesize(filesize);
				log.info("filesize {}"+filesize);
				dto.setSavepath(savepath);
				log.info("savepath {}"+savepath);
				
				dto.setEmail(email);
				
				log.info("dto {}"+dto);
				
				service.upload(dto);
				log.info("업로드 성공 ");
				dto.setDownload(filename);
				System.out.println(dto.getFilename());
				log.info("uploadPK : {}"+ dto);
				
				service.apply(dto);
				
				List<ApplyDto> lists = service.applyList();
				model.addAttribute("dto", lists);

				
				// 여기에 if문
				// email2가 naver.com 이면 mailservice.xxx(); 로
				
				log.info(email2);
				
				if(email2.equals("naver.com")){
					mailservice.NaversendEmail(dto);
					log.info("네이버 메일 전송 완료");
				}else if(email2.equals("gmail.com")){
					mailservice.sendEmail(dto);
					log.info("구글 메일 전송 완료");
				}else if(email2.equals("hanmail.net")){
					mailservice.hanmailsendEmail(dto);
					log.info("다음 메일 전송 완료");
				}
				
				log.info("메일전송 성공");

				// 다운로드 받을때 pk=filename값 몇이다 라고 알수있게
			} catch (Exception e) {
				System.out.println("업로드 오류");
				log.error(e.getMessage());
				return "/writeForm";
			}
		}
		return "/searchForm";
	}

	// 파일 다운로드
	@RequestMapping(value = "/download.do", method = RequestMethod.GET)
	public void download(Model model, HttpServletRequest req, HttpServletResponse resp,
			ApplyDto dto)
			throws IOException {

		ApplyDto adto = service.down(dto); // 지금 여기가 null

		log.info("download dto : {}"+ adto);

		File file = new File(adto.getSavepath() + adto.getFilename());
		log.info("file : {}"+ file);

		InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
		String mimeType = URLConnection.guessContentTypeFromStream(inputStream);

		// 파일의 종류가 없다면 기본으로 설정
		if (mimeType == null) {
			mimeType = "application/octec-stream";
		}
		
		resp.setContentType(mimeType);
		resp.setContentLength((int) file.length());
		// 해당 파일이 첨부 파일임을 명시
		resp.setHeader("Content-Disposition", String.format("attachment; filename=\"%s\"",
				file.getName()));
		log.info(file.getName() + "@@@@@@@@@@@@@@@@@@@@@@@@@@");

		FileCopyUtils.copy(inputStream, resp.getOutputStream());
	}
	
	// 추천서양식 다운로드
	@RequestMapping(value = "/recomDown.do", method = RequestMethod.GET)
	public void recomDown(Model model, HttpServletRequest req, HttpServletResponse resp,
			ApplyDto dto)
			throws IOException {
		
		String savepath = "C:\\fileupload\\";
		String filename = "(추천서) 부천 디아스포라 문학상 후보작 공식 추천서.hwp";
		
		File file = new File(savepath + filename);
		log.info("file : {}"+ file);

		InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
		String mimeType = URLConnection.guessContentTypeFromStream(inputStream);

		// 파일의 종류가 없다면 기본으로 설정
		if (mimeType == null) {
			mimeType = "application/octec-stream";
		}
		
		resp.setContentType(mimeType);
		resp.setContentLength((int) file.length());
		// 해당 파일이 첨부 파일임을 명시
		resp.setHeader("Content-Disposition", String.format("attachment; filename=\"%s\"",
				file.getName()));
		log.info(file.getName() + "@@@@@@@@@@@@@@@@@@@@@@@@@@");

		FileCopyUtils.copy(inputStream, resp.getOutputStream());
	}
	

	@RequestMapping(value = "/admin/applyList", method = RequestMethod.GET)
	public String applyCheck(Model model, BoardDto dto,
			HttpSession session, HttpServletRequest req) {

		List<ApplyDto> lists = service.applyList();
		model.addAttribute("dto", lists);
		log.info("applyCheck { }"+ lists);
		return "/admin/applyList";
	}

	@RequestMapping(value = "/searchForm", method = RequestMethod.GET)
	public String searchForm(HttpServletResponse response) throws IOException {
		return "/searchForm";
	}

	@RequestMapping(value = "/searchList", method = RequestMethod.GET)
	public String search(ApplyDto dto, Model model) {
		List<ApplyDto> n = service.search(dto);
		if (n == null) {
			// alert창 띄우기 찾는거 없다고
			log.info("검색 결과 없음");
			return "/searchList";
		} else {
			service.search(dto);
			model.addAttribute("dto", n);
			return "/searchList";
		}
	}

	@RequestMapping(value = "/boardDetail", method = RequestMethod.GET)
	public String detail(Model model, ApplyDto dto) {
		ApplyDto lists = service.detail(dto);
		log.info("게시판 상세 보기"+ dto);
		model.addAttribute("dto", lists);
		return "/boardDetail";
	}

	@ResponseBody
	@RequestMapping(value = "/admin/denyList.do", method = RequestMethod.POST)
	public boolean denyget(@RequestParam String email, ApplyDto dto) throws MessagingException {
		System.out.println(email);
		service.deny(email); // 'N'으로 update문
		System.out.println("됐나");
		return true;
	}

	@RequestMapping(value = "/admin/denyList.do", method = RequestMethod.GET)
	public String denyList(Model model) {
		List<ApplyDto> lists = service.denyList();
		model.addAttribute("dto", lists);
		return "/admin/denyList";
	}

	@ResponseBody
	@RequestMapping(value = "/admin/permitList.do", method = RequestMethod.POST)
	public boolean permitget(@RequestParam String email) {
		System.out.println(email);
		service.permit(email);
		System.out.println("됐나");
		return true;
	}

	@RequestMapping(value = "/admin/permitList.do", method = RequestMethod.GET)
	public String permitList(Model model) {
		List<ApplyDto> lists = service.permitList();
		model.addAttribute("dto", lists);
		return "/admin/permitList";
	}

	@RequestMapping(value = "/admin/allList.do", method = RequestMethod.GET)
	public String allList(Model model, @RequestParam("num") int number) {

		// 게시물 총 갯수
		int count = service.historyPaging();

		// 한 페이지에 출력할 게시물 갯수
		int postNum = 10;

		// 하단 페이징 갯수 ( '게시물 총갯수 / 한페이지에 출력할 갯수' 의 올림) // 나머지 페이지들도 보여야하니까
		int pageNum = (int) Math.ceil((double) count / postNum);

		// 페이지에서 첫번째 게시글의 번호
		int displayPost = (number - 1) * postNum;

		// 하단에 한페이지에 보여지는 페이지의 갯수
		int pageNum_cnt = 5;

		// 표시되는 하단 페이지 번호 중 마지막 번호
		int endPageNum = (int) (Math.ceil((double) number / (double) pageNum_cnt) * pageNum_cnt);

		// 표시되는 페이지 번호 중 첫번째 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);

		// 마지막 번호 재계산
		int endPageNum_tmp = (int) (Math.ceil((Math.ceil((double) count / (double) pageNum_cnt)) / 2));

		if (endPageNum > endPageNum_tmp) { // 빈페이지가 없게 하려고
			endPageNum = endPageNum_tmp;
		}

		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;

		// 이전 링크는 시작페이지번호가 1일때를 제외하곤 무조건 출력 되어야 함
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);

		// 이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);

		// 현재 페이지
		model.addAttribute("select", number);

		List<ApplyDto> lists = service.allList(displayPost, postNum);
		
		model.addAttribute("number", number);
		model.addAttribute("pageNum", pageNum); // 페이지 총 갯수
		model.addAttribute("dto", lists);
		return "/admin/allList";
	}

	@RequestMapping(value = "/candiList.do", method = RequestMethod.GET)
	public String candiList(Model model) {
		List<ApplyDto> lists = service.candiList();
		model.addAttribute("dto", lists);
		return "/candiList";
	}

	@RequestMapping(value = "/userCandi.do", method = RequestMethod.GET)
	public String userCandi() {
		return "/userCandi";
	}
	
	@ResponseBody
	@RequestMapping(value = "/candiList.do", method = RequestMethod.POST)
	public boolean candiget(@RequestParam String email, Model model) throws IOException {
		service.candi(email);
		return true;
	}

	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public String delete(@RequestParam String email, Model model) throws IOException {
		service.delete(email);
		return "/candiList";
	}
	
	
	
}
