package egovframework.example.Dto;

import java.util.Date;

public class BoardDto {

	private String name; // 이름
	private String adminid; // 관리자 아이디
	private String pw;
	private String email;
	private String auth;
	
	private int retry;
	private String retrytime;
	
	private String ip;
	private Date iptime;
	

	public BoardDto() {
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAdminid() {
		return adminid;
	}


	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAuth() {
		return auth;
	}


	public void setAuth(String auth) {
		this.auth = auth;
	}


	public int getRetry() {
		return retry;
	}


	public void setRetry(int retry) {
		this.retry = retry;
	}


	public String getRetrytime() {
		return retrytime;
	}


	public void setRetrytime(String retrytime) {
		this.retrytime = retrytime;
	}


	public String getIp() {
		return ip;
	}


	public void setIp(String ip) {
		this.ip = ip;
	}


	public Date getIptime() {
		return iptime;
	}


	public void setIptime(Date iptime) {
		this.iptime = iptime;
	}


	public BoardDto(String name, String adminid, String pw, String email, String auth, int retry, String retrytime,
			String ip, Date iptime) {
		super();
		this.name = name;
		this.adminid = adminid;
		this.pw = pw;
		this.email = email;
		this.auth = auth;
		this.retry = retry;
		this.retrytime = retrytime;
		this.ip = ip;
		this.iptime = iptime;
	}


	@Override
	public String toString() {
		return "BoardDto [name=" + name + ", adminid=" + adminid + ", pw=" + pw + ", email=" + email + ", auth=" + auth
				+ ", retry=" + retry + ", retrytime=" + retrytime + ", ip=" + ip + ", iptime=" + iptime + "]";
	}


}
