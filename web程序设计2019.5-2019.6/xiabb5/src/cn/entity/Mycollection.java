package cn.entity;

public class Mycollection {
	private String usermail;
	private int postid;

	public String getUsermail() {
		return this.usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public int getPostid() {
		return this.postid;
	}

	public void setPostid(int postid) {
		this.postid = postid;
	}

	public Mycollection(String usermail, int postid) {
		this.usermail = usermail;
		this.postid = postid;
	}

	public Mycollection() {
	}
}