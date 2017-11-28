package cn.gsw.news.bean;

import java.util.Date;

public class NewsDetail {
	private int id;
	private String title;
	private String summary;
	private String author;
	private Date createdate;
	public NewsDetail(int id, String title, String summary, String author,
			Date createdate) {
		super();
		this.id = id;
		this.title = title;
		this.summary = summary;
		this.author = author;
		this.createdate = createdate;
	}
	public NewsDetail() {
		super();
	}
	public int getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public String getSummary() {
		return summary;
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
	public void setTitle(String title) {
		this.title = title;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	@Override
	public String toString() {
		return "NewsDetail [id=" + id + ", title=" + title + ", summary="
				+ summary + ", author=" + author + ", createdate=" + createdate
				+ "]";
	}
	
}
