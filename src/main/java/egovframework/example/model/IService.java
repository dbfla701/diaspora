package egovframework.example.model;


import java.util.List;
import egovframework.example.Dto.ApplyDto;
import egovframework.example.Dto.BoardDto;
import egovframework.example.Dto.HomeDto;
import egovframework.example.Dto.NewsDto;

public interface IService {
	
	// 회원가입
	public boolean joinUser(BoardDto dto);
	
	// 로그인
	public BoardDto login(BoardDto dto);
	
	// pw가져오기
	public boolean pwCount(String pw);
	
	// pw select
	public String pwSelect();
	
	// count
	public int count(BoardDto dto);
	
	// 로그인 실패 횟수
	public boolean loginFailCount();
	
	// security 비번, 권한 select
	public BoardDto loginChk(String adminid);
	
	// 실패 횟수 select
	public int loginFail();
	
	// retry 0부터
	public boolean retryReset();
	
	// 마지막 로그인 시간 update
	public boolean lastLogin(BoardDto dto);
	
	// 비번 변경
	public boolean pwUpdate(String pw);
	
	// 마지막 로그인 시간 select
	public String retryTime();
	
	// 참가신청 폼 작성
	public boolean apply(ApplyDto dto);
	
	// 파일 업로드
	public boolean upload(ApplyDto dto);
	
	// 참가신청관리 (목록)
	public List<ApplyDto> applyList();
	
	// 추천서 전체 목록
	public List<ApplyDto> allList(int displayPost, int postNum);
	
	// 검색
	public List<ApplyDto> search(ApplyDto dto);
	
	// 이메일 연동
	public int emailChk(String email);
	
	// 관리자 아이디 select
	public BoardDto adminSelect();
	
	// 글 상세보기
	public ApplyDto detail(ApplyDto dto);
	
	// 파일 다운로드
	public ApplyDto down(ApplyDto dto);
	
	// 반려
	public boolean deny(String email);
	
	// 반려 리스트
	public List<ApplyDto> denyList();
	
	// 후보
	public boolean permit(String email);
	
	// 후보 리스트
	public List<ApplyDto> permitList();
	
	// 최종후보
	public boolean candi(String email);
	
	// 최종후보 리스트
	public List<ApplyDto> candiList();
	
	// 최종후보 갯수
	public int candiCount();
	
	// 최종후보 삭제
	public boolean delete(String email);
	
	// 새소식(news) 글 등록
	public boolean news(NewsDto dto);
	
	// news 글목록
	public List<NewsDto> newsList();
	
	// news 임시저장
	public boolean imsi(NewsDto dto);
	
	// 임시 목록
	public List<NewsDto> imsiList();
	
	// 로그인 ip, 시간 저장
	public boolean history(BoardDto dto);
	
	// 로그인 기록 select = listPage
	public List<BoardDto> historyList(int displayPost, int postNum);
	
	// ck에디터 select
	public HomeDto ckselect();
	
	// ck에디터 수정
	public boolean urlupdate(HomeDto dto);
	
	// 심사평 등록
	public boolean review(ApplyDto dto);
	
	// 심사평 게시
	public ApplyDto reviewSelect();
	
	// 2021년 심사평 select
	public ApplyDto reg2021();
	
	// 2022년 심사평 select
	public ApplyDto reg2022();
	
	// main에 새소식 5개
	public List<NewsDto> newsSelect();
	
	// 최종후보작 메인에 나올거 5개 
	public List<ApplyDto> candiSelect();
	
	// 임시글 detail
	public NewsDto imsiDetail(NewsDto dto);
	
	// 임시-> 글 등록
	public boolean newsUpdate(NewsDto dto);
	
	// news 저장글 상세보기
	public NewsDto newsDetail(NewsDto dto);
	
	// security select
	/*public Account readAccount(String id);*/
	
	// history 게시물 총 갯수
	public int historyPaging();
	
	// 로그인 실패 횟수 증가 update
	public boolean updateFailureCount(String adminid);
	
	// 로그인 실패 횟수 select
	public int checkFailureCount(String adminid);
	
	// 계정 비활성화
	public BoardDto disabledUsername(String adminid);
	
	// news 새소식 이미지 업로드
	public boolean news_fileupload(NewsDto dto);
	
	// 새소식 이미지 select
	public NewsDto imageSelect(NewsDto dto);
	
	// 수상작으로 update
	public boolean susangUpdate(String email);
	
	// 수상작 select
	public ApplyDto susangSelect();
	
}
