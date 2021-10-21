package egovframework.example.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import egovframework.example.Dto.ApplyDto;
import egovframework.example.Dto.BoardDto;
import egovframework.example.Dto.HomeDto;
import egovframework.example.Dto.NewsDto;

@Service
public class ServiceController implements IService{
	
	private Logger log = LoggerFactory.getLogger(ServiceController.class);
	
	@Autowired
	private IDao dao;

	@Override
	public boolean joinUser(BoardDto dto) {
		log.info("회원가입 : joinUser");
		log.info("dto { }",dto);
		return dao.joinUser(dto);
	}

	@Override
	public BoardDto login(BoardDto dto) {
		log.info("로그인 : login");
		log.info("dto {}",dto);
		return dao.login(dto);
	}

	@Override
	public int count(BoardDto dto) {
		log.info("count { }", dto);
		return dao.count(dto);
	}

	@Override
	public boolean apply(ApplyDto dto) {
		log.info("글 등록 { }", dto);
		return dao.apply(dto);
	}

	@Override
	public boolean upload(ApplyDto dto) {
		log.info("파일 업로드 { }", dto);
		return dao.upload(dto);
	}

	@Override
	public List<ApplyDto> applyList() {
		log.info("참가신청목록 { }");
		return dao.applyList();
	}

	@Override
	public List<ApplyDto> search(ApplyDto dto) {
		log.info("검색 id { }", dto);
		return dao.search(dto);
	}

	@Override
	public int emailChk(String email) {
		log.info("이메일 { }", email);
		return dao.emailChk(email);
	}

	@Override
	public BoardDto adminSelect() {
		return dao.adminSelect();
	}

	@Override
	public ApplyDto detail(ApplyDto dto) {
		log.info("글 상세보기 { }",dto);
		return dao.detail(dto);
	}

	@Override
	public ApplyDto down(ApplyDto dto) {
		log.info("파일 다운로드 { }", dto);
		return dao.down(dto);
	}

	@Override
	public boolean deny(String email) {
		return dao.deny(email);
	}

	@Override
	public List<ApplyDto> denyList() {
		log.info("추천서 목록 { }");
		return dao.denyList();
	}

	@Override
	public boolean permit(String email) {
		return dao.permit(email);
	}

	@Override
	public List<ApplyDto> permitList() {
		return dao.permitList();
	}

	@Override
	public List<ApplyDto> allList(int displayPost, int postNum) {
		return dao.allList(displayPost, postNum);
	}

	@Override
	public boolean candi(String email) {
		return dao.candi(email);
	}

	@Override
	public List<ApplyDto> candiList() {
		return dao.candiList();
	}

	@Override
	public int candiCount() {
		return dao.candiCount();
	}

	@Override
	public boolean delete(String email) {
		return dao.delete(email);
	}

	@Override
	public boolean news(NewsDto dto) {
		return dao.news(dto);
	}

	@Override
	public List<NewsDto> newsList() {
		return dao.newsList();
	}

	@Override
	public boolean imsi(NewsDto dto) {
		return dao.imsi(dto);
	}

	@Override
	public List<NewsDto> imsiList() {
		return dao.imsiList();
	}

	@Override
	public boolean history(BoardDto dto) {
		return dao.history(dto);
	}

	@Override
	public HomeDto ckselect() {
		return dao.ckselect();
	}

	@Override
	public boolean urlupdate(HomeDto dto) {
		return dao.urlupdate(dto);
	}

	@Override
	public List<BoardDto> historyList(int displayPost, int postNum) {
		return dao.historyList(displayPost, postNum);
	}

	@Override
	public boolean review(ApplyDto dto) {
		return dao.review(dto);
	}

	@Override
	public ApplyDto reviewSelect() {
		return dao.reviewSelect();
	}

	@Override
	public ApplyDto reg2021() {
		return dao.reg2021();
	}

	@Override
	public ApplyDto reg2022() {
		return dao.reg2022();
	}

	@Override
	public List<NewsDto> newsSelect() {
		return dao.newsSelect();
	}

	@Override
	public List<ApplyDto> candiSelect() {
		return dao.candiSelect();
	}

	@Override
	public NewsDto imsiDetail(NewsDto dto) {
		return dao.imsiDetail(dto);
	}

	@Override
	public boolean newsUpdate(NewsDto dto) {
		return dao.newsUpdate(dto);
	}

	@Override
	public NewsDto newsDetail(NewsDto dto) {
		return dao.newsDetail(dto);
	}

	@Override
	public boolean loginFailCount() {
		return dao.loginFailCount();
	}

	@Override
	public int loginFail() {
		return dao.loginFail();
	}

	@Override
	public boolean lastLogin(BoardDto dto) {
		return dao.lastLogin(dto);
	}

	@Override
	public boolean retryReset() {
		return dao.retryReset();
	}

	@Override
	public String retryTime() {
		return dao.retryTime();
	}

	@Override
	public int historyPaging() {
		return dao.historyPaging();
	}

	@Override
	public boolean pwCount(String pw) {
		return dao.pwCount(pw);
	}

	@Override
	public String pwSelect() {
		return dao.pwSelect();
	}

	@Override
	public boolean pwUpdate(String pw) {
		return dao.pwUpdate(pw);
	}

	@Override
	public BoardDto loginChk(String adminid) {
		return dao.loginChk(adminid);
	}

	@Override
	public boolean updateFailureCount(String adminid) {
		return dao.updateFailureCount(adminid);
	}

	@Override
	public int checkFailureCount(String adminid) {
		return dao.checkFailureCount(adminid);
	}

	@Override
	public BoardDto disabledUsername(String adminid) {
		return dao.disabledUsername(adminid);
	}

	@Override
	public boolean news_fileupload(NewsDto dto) {
		return dao.news_fileupload(dto);
	}

	@Override
	public NewsDto imageSelect(NewsDto dto) {
		return dao.imageSelect(dto);
	}

	@Override
	public boolean susangUpdate(String email) {
		return dao.susangUpdate(email);
	}

	@Override
	public ApplyDto susangSelect() {
		return dao.susangSelect();
	}


}
