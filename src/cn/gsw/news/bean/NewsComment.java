package cn.gsw.news.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NewsComment {
	private int id;
	private int newsid;
	private String content;
	private String author;
	private Date createdate;
	
	public NewsComment(int id, int newsid, String content, String author,
			Date createdate) {
		super();
		this.id = id;
		this.newsid = newsid;
		this.content = content;
		this.author = author;
		this.createdate = createdate;
	}
	public NewsComment() {
		super();
	}
	public int getId() {
		return id;
	}
	public int getNewsid() {
		return newsid;
	}
	public String getContent() {
		return content;
	}
	public String getAuthor() {
		return author;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	@Override
	public String toString() {
		return "NewsComment [id=" + id + ", newsid=" + newsid + ", content="
				+ content + ", author=" + author + ", createdate=" + createdate
				+ "]";
	}
	         
}
