package cn.entity;

import java.util.Date;

public class Postinfo {
	private int postid;
	private String usermail;
	private String posttitle;
	private String postcontent;
	private Date postdate;

	public Postinfo(int postid, String usermail, String posttitle, String postcontent, Date postdate) {
		this.postid = postid;
		this.usermail = usermail;
		this.posttitle = posttitle;
		this.postcontent = postcontent;
		this.postdate = postdate;
	}

	public Postinfo() {
	}

	public Postinfo(String usermail, String posttitle, String postcontent) {
		this.usermail = usermail;
		this.posttitle = posttitle;
		this.postcontent = postcontent;
	}

	public void setPostid(int postid) {
		this.postid = postid;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public int getPostid() {
		return this.postid;
	}

	public String getUsermail() {
		return this.usermail;
	}

	public String getPosttitle() {
		return this.posttitle;
	}

	public void setPosttitle(String posttitle) {
		this.posttitle = posttitle;
	}

	public String getPostcontent() {
		return this.postcontent;
	}

	public void setPostcontent(String postcontent) {
		this.postcontent = postcontent;
	}

	public Date getPostdate() {
		return this.postdate;
	}

	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}
}