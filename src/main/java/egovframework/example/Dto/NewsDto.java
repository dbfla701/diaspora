package egovframework.example.Dto;

import java.util.Date;

public class NewsDto {
	
	private int seq;
	private String news_title;
	private String news_content;
	private Date regdate;
	private String imsi;
	
	private String filename;
	private int filesize;
	private String savepath;
	
	public NewsDto() {
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getNews_title() {
		return news_title;
	}

	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}

	public String getNews_content() {
		return news_content;
	}

	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getImsi() {
		return imsi;
	}

	public void setImsi(String imsi) {
		this.imsi = imsi;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getFilesize() {
		return filesize;
	}

	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}

	public String getSavepath() {
		return savepath;
	}

	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}

	@Override
	public String toString() {
		return "NewsDto [seq=" + seq + ", news_title=" + news_title + ", news_content=" + news_content + ", regdate="
				+ regdate + ", imsi=" + imsi + ", filename=" + filename + ", filesize=" + filesize + ", savepath="
				+ savepath + "]";
	}

	public NewsDto(int seq, String news_title, String news_content, Date regdate, String imsi, String filename,
			int filesize, String savepath) {
		super();
		this.seq = seq;
		this.news_title = news_title;
		this.news_content = news_content;
		this.regdate = regdate;
		this.imsi = imsi;
		this.filename = filename;
		this.filesize = filesize;
		this.savepath = savepath;
	}

	


}
