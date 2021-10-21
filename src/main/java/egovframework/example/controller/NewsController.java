package egovframework.example.controller;

import java.io.File;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.example.Dto.NewsDto;
import egovframework.example.model.IService;

@Controller
public class NewsController {

	private Logger log = LoggerFactory.getLogger(NewsController.class);

	@Autowired
	private IService service;

	// 글 작성 폼
	@RequestMapping(value = "/admin/newsForm.do", method = RequestMethod.GET)
	public String news(@ModelAttribute NewsDto dto, Model model) {
		log.info("newsForm");
		return "/admin/newsForm";
	}

	@RequestMapping(value = "/newswrite.do", method = RequestMethod.POST)
	public String newsWrite(NewsDto dto, Model model, MultipartHttpServletRequest req) {

		String fileTag = "file"; //
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
			log.info("filename { }" + filename);
			dto.setFilesize(filesize);
			log.info("filesize { }" + filesize);
			dto.setSavepath(savepath);
			log.info("savepath { }" + savepath);

			log.info("dto { }" + dto);

			service.news_fileupload(dto); // 이거 수정해야함
			log.info("업로드 성공 ");
			System.out.println(dto.getFilename());
			log.info("uploadPK : {}" + dto);

			service.news(dto);
			log.info("newsForm {}", dto);
		} catch (Exception e) {
			System.out.println("업로드 오류");
			log.error(e.getMessage());
		}
		return "/admin/newsForm";
	}

	@RequestMapping(value = "/news.do", method = RequestMethod.GET)
	public String newsList(Model model, NewsDto dto) {
		log.info("newsList");
		List<NewsDto> lists = service.newsList();
		model.addAttribute("dto", lists);
		log.info("############################# {}", lists);
		log.info("seq {}", dto.getSeq());
		NewsDto image = service.imageSelect(dto);
		model.addAttribute("dto", image);
		log.info("filename {}", image);
		return "/news";
	}

	@RequestMapping(value = "/imsiSave.do", method = RequestMethod.POST)
	public String imsi(NewsDto dto) {
		service.imsi(dto);
		log.info("임시저장완료");
		return "/admin/imsi";
	}

	@RequestMapping(value = "/admin/imsi.do", method = RequestMethod.GET)
	public String imsiList(@ModelAttribute NewsDto dto, Model model) {
		List<NewsDto> lists = service.imsiList();
		model.addAttribute("dto", lists);
		log.info("newsList");
		return "/admin/imsi";
	}

	// 임시글 상세보기
	@RequestMapping(value = "/admin/imsiDetail.do", method = RequestMethod.GET)
	public String imsiUpdate(Model model, NewsDto dto) {
		NewsDto lists = service.imsiDetail(dto);
		model.addAttribute("dto", lists);
		return "/admin/imsiDetail";
	}

	// 지금 여기가 문제!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	/*
	 * @RequestMapping(value="/update.do", method= RequestMethod.POST) public
	 * String newsUpdate(NewsDto dto){ service.imsiDetail(dto);
	 * System.out.println("update post"); return
	 * "redirect:/admin/newsUpdate?seq=dto"; }
	 */

	// 수정하는 폼
	@RequestMapping(value = "/admin/newsUpdate.do", method = RequestMethod.GET)
	public String newsUpdate2(Model model, NewsDto dto) {
		NewsDto lists = service.imsiDetail(dto);
		model.addAttribute("dto", lists);
		return "/admin/newsUpdate";
	}

	@RequestMapping(value = "/admin/newsUpdate.do", method = RequestMethod.POST)
	public String newsSave(NewsDto dto) {
		service.newsUpdate(dto);
		log.info("임시->저장 : {}", dto);
		return "redirect:/news.do";
	}

	// news 저장글 상세보기
	@RequestMapping(value = "/newsDetail.do", method = RequestMethod.GET)
	public String newsDetail(Model model, NewsDto dto) {
		NewsDto lists = service.newsDetail(dto);
		model.addAttribute("dto", lists);
		return "/newsDetail";
	}
	
	// news 저장글 상세보기
	@RequestMapping(value = "/userNewsDetail.do", method = RequestMethod.GET)
	public String userNewsDetail(Model model, NewsDto dto) {
		NewsDto lists = service.newsDetail(dto);
		model.addAttribute("dto", lists);
		return "/userNewsDetail";
	}
}
