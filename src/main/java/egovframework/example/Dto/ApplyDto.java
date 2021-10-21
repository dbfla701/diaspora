package egovframework.example.Dto;

import java.util.Date;

public class ApplyDto {
	
	private int seq;
	
	private String title; // 작품명
	
	private String author; // 지은이 ---
	
	private String isbn; // isbn
	
	private String lang; // 원어
	
	private String publisher; // 원작출판사 -- edit
	
	private String pubdate; // 출판연도 ---editdate
	
	private String trans_name; // 번역작품명
	private String trans_author; // 옮긴이
	private String trans_isbn; // isbn
	private String trans_edit; // 출판사
	private String trans_date; // 출판연도
	private String content1; // 글쓸 내용
	private String content2; // 글쓸 내용2
	private String id; // 추천서 작성자 이름
	private String image;
	
	private String email; // 작성자 이메일
	
	private Date regdate; // 추천서 쓴 날짜
	
	private String filename;
	private int filesize;
	private String savepath;
	private String download;
	private String permit;
	
	// 심사평 등록 (심사평 글, 심사평 쓴 날짜
	private String review;
	private Date reviewtime;
	
	public ApplyDto() {
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPubdate() {
		return pubdate;
	}

	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}

	public String getTrans_name() {
		return trans_name;
	}

	public void setTrans_name(String trans_name) {
		this.trans_name = trans_name;
	}

	public String getTrans_author() {
		return trans_author;
	}

	public void setTrans_author(String trans_author) {
		this.trans_author = trans_author;
	}

	public String getTrans_isbn() {
		return trans_isbn;
	}

	public void setTrans_isbn(String trans_isbn) {
		this.trans_isbn = trans_isbn;
	}

	public String getTrans_edit() {
		return trans_edit;
	}

	public void setTrans_edit(String trans_edit) {
		this.trans_edit = trans_edit;
	}

	public String getTrans_date() {
		return trans_date;
	}

	public void setTrans_date(String trans_date) {
		this.trans_date = trans_date;
	}

	public String getContent1() {
		return content1;
	}

	public void setContent1(String content1) {
		this.content1 = content1;
	}

	public String getContent2() {
		return content2;
	}

	public void setContent2(String content2) {
		this.content2 = content2;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
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

	public String getDownload() {
		return download;
	}

	public void setDownload(String download) {
		this.download = download;
	}

	public String getPermit() {
		return permit;
	}

	public void setPermit(String permit) {
		this.permit = permit;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public Date getReviewtime() {
		return reviewtime;
	}

	public void setReviewtime(Date reviewtime) {
		this.reviewtime = reviewtime;
	}

	@Override
	public String toString() {
		return "ApplyDto [seq=" + seq + ", title=" + title + ", author=" + author + ", isbn=" + isbn + ", lang=" + lang
				+ ", publisher=" + publisher + ", pubdate=" + pubdate + ", trans_name=" + trans_name + ", trans_author="
				+ trans_author + ", trans_isbn=" + trans_isbn + ", trans_edit=" + trans_edit + ", trans_date="
				+ trans_date + ", content1=" + content1 + ", content2=" + content2 + ", id=" + id + ", image=" + image
				+ ", email=" + email + ", regdate=" + regdate + ", filename=" + filename + ", filesize=" + filesize
				+ ", savepath=" + savepath + ", download=" + download + ", permit=" + permit + ", review=" + review
				+ ", reviewtime=" + reviewtime + "]";
	}

	public ApplyDto(int seq, String title, String author, String isbn, String lang, String publisher, String pubdate,
			String trans_name, String trans_author, String trans_isbn, String trans_edit, String trans_date,
			String content1, String content2, String id, String image, String email, Date regdate, String filename,
			int filesize, String savepath, String download, String permit, String review, Date reviewtime) {
		super();
		this.seq = seq;
		this.title = title;
		this.author = author;
		this.isbn = isbn;
		this.lang = lang;
		this.publisher = publisher;
		this.pubdate = pubdate;
		this.trans_name = trans_name;
		this.trans_author = trans_author;
		this.trans_isbn = trans_isbn;
		this.trans_edit = trans_edit;
		this.trans_date = trans_date;
		this.content1 = content1;
		this.content2 = content2;
		this.id = id;
		this.image = image;
		this.email = email;
		this.regdate = regdate;
		this.filename = filename;
		this.filesize = filesize;
		this.savepath = savepath;
		this.download = download;
		this.permit = permit;
		this.review = review;
		this.reviewtime = reviewtime;
	}

}
