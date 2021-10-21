package egovframework.example.model;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import egovframework.example.Dto.ApplyDto;
import egovframework.example.Dto.BoardDto;
import egovframework.example.Dto.HomeDto;
import egovframework.example.Dto.NewsDto;

@Repository
public class Dao implements IDao{
	
	 private final String NS = "egovframework.sqlmap.BoardMapper.";
	   
	  @Autowired
	  private SqlSessionTemplate session;

	// 회원가입
	@Override
	public boolean joinUser(BoardDto dto) {
		int n = session.insert(NS+"joinUser", dto);
		return (n > 0) ? true : false;
	}

	// 로그인
	@Override
	public BoardDto login(BoardDto dto) {
		return (BoardDto) session.selectOne(NS+"login", dto);
	}

	@Override
	public int count(BoardDto dto) {
		return session.selectOne(NS+"count", dto);
	}

	@Override
	public boolean apply(ApplyDto dto) {
		int n = session.insert(NS+"apply", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public boolean upload(ApplyDto dto) {
		int n = session.insert(NS+"upload", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<ApplyDto> applyList() {
		return session.selectList(NS+"applyList");
	}

	@Override
	public List<ApplyDto> search(ApplyDto dto) {
		return session.selectList(NS+"search", dto);
	}

	@Override
	public int emailChk(String email) {
		return session.selectOne(NS+"emailChk", email);
	}

	@Override
	public BoardDto adminSelect() {
		return session.selectOne(NS+"adminSelect");
	}

	@Override
	public ApplyDto detail(ApplyDto dto) {
		return session.selectOne(NS+"detail",dto);
	}

	@Override
	public ApplyDto down(ApplyDto dto) {
		return session.selectOne(NS+"down", dto);
	}

	@Override
	public boolean deny(String email) {
		int n = session.update(NS+"deny", email);
		return (n > 0) ? true : false;
	}

	@Override
	public List<ApplyDto> denyList() {
		return session.selectList(NS+"denyList");
	}

	@Override
	public boolean permit(String email) {
		int n = session.update(NS+"permit", email);
		return (n > 0) ? true : false;
	}

	@Override
	public List<ApplyDto> permitList() {
		return session.selectList(NS+"permitList");
	}

	@Override
	public List<ApplyDto> allList(int displayPost, int postNum) {
		HashMap<String, Object> data = new HashMap<>();

		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		return session.selectList(NS+"allList", data);
	}

	@Override
	public boolean candi(String email) {
		int n = session.update(NS+"candi", email);
		return (n > 0) ? true : false;
	}

	@Override
	public List<ApplyDto> candiList() {
		return session.selectList(NS+"candiList");
	}

	@Override
	public int candiCount() {
		return session.selectOne(NS+"candiCount");
	}

	@Override
	public boolean delete(String email) {
		int n = session.update(NS+"delete", email);
		return (n > 0) ? true : false;
	}

	@Override
	public boolean news(NewsDto dto) {
		int n = session.update(NS+"news", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<NewsDto> newsList() {
		return session.selectList(NS+"newsList");
	}

	@Override
	public boolean imsi(NewsDto dto) {
		int n = session.insert(NS+"imsi", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<NewsDto> imsiList() {
		return session.selectList(NS+"imsiList");
	}

	@Override
	public boolean history(BoardDto dto) {
		int n = session.insert(NS+"history", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public HomeDto ckselect() {
		return session.selectOne(NS+"ckselect");
	}

	@Override
	public boolean urlupdate(HomeDto dto) {
		int n = session.update(NS+"urlupdate", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public List<BoardDto> historyList(int displayPost, int postNum) {
		HashMap<String, Object> data = new HashMap<>();

		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		return session.selectList(NS+"historyList",data);
	}

	@Override
	public boolean review(ApplyDto dto) {
		int n = session.insert(NS+"review", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public ApplyDto reviewSelect() {
		return session.selectOne(NS+"reviewSelect");
	}

	@Override
	public ApplyDto reg2021() {
		return session.selectOne(NS+"reg2021");
	}

	@Override
	public ApplyDto reg2022() {
		return session.selectOne(NS+"reg2022");
	}

	@Override
	public List<NewsDto> newsSelect() {
		return session.selectList(NS+"newsSelect");
	}

	@Override
	public List<ApplyDto> candiSelect() {
		return session.selectList(NS+"candiSelect");
	}

	@Override
	public NewsDto imsiDetail(NewsDto dto) {
		return session.selectOne(NS+"imsiDetail",dto);
	}

	@Override
	public boolean newsUpdate(NewsDto dto) {
		int n = session.update(NS+"newsUpdate", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public NewsDto newsDetail(NewsDto dto) {
		return session.selectOne(NS+"newsDetail", dto);
	}

	@Override
	public boolean loginFailCount() {
		int n = session.update(NS+"loginFailCount");
		return (n > 0) ? true : false;
	}

	@Override
	public int loginFail() {
		return session.selectOne(NS+"loginFail");
	}

	@Override
	public boolean lastLogin(BoardDto dto) {
		int n = session.update(NS+"lastLogin", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public boolean retryReset() {
		int n = session.insert(NS+"retryReset");
		return (n > 0) ? true : false;
	}

	@Override
	public String retryTime() {
		return session.selectOne(NS+"retryTime");
	}

	@Override
	public int historyPaging() {
		return session.selectOne(NS+"historyPaging");
	}

	@Override
	public boolean pwCount(String pw) {
		boolean result = false;
		int count = session.selectOne(NS+"pwCount", pw);
		if(count==1){
			result=true;
		}else if(count==0){
			result=false;
		}
		return result;
	}

	@Override
	public String pwSelect() {
		return session.selectOne(NS+"pwSelect");
	}

	@Override
	public boolean pwUpdate(String pw) {
		int n = session.update(NS+"pwUpdate", pw);
		return (n > 0) ? true : false;
	}

	@Override
	public BoardDto loginChk(String adminid) {
		return session.selectOne(NS+"loginChk", adminid);
	}

	@Override
	public boolean updateFailureCount(String adminid) {
		int n = session.update(NS+"updateFailureCount", adminid);
		return (n > 0) ? true : false;
	}

	@Override
	public int checkFailureCount(String adminid) {
		return session.selectOne(NS+"checkFailureCount", adminid);
	}

	@Override
	public BoardDto disabledUsername(String adminid) {
		return null;
	}

	@Override
	public boolean news_fileupload(NewsDto dto) {
		int n = session.insert(NS+"news_fileupload", dto);
		return (n > 0) ? true : false;
	}

	@Override
	public NewsDto imageSelect(NewsDto dto) {
		return session.selectOne(NS+"imageSelect", dto);
	}

	@Override
	public boolean susangUpdate(String email) {
		int n = session.insert(NS+"susangUpdate", email);
		return (n > 0) ? true : false;
	}

	@Override
	public ApplyDto susangSelect() {
		return session.selectOne(NS+"susangSelect");
	}

}
