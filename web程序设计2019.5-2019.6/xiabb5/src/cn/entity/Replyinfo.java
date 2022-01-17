package cn.entity;

public class Replyinfo {
	private String usermail;
	private String username;
	private int postid;
	private String replycontent;

	public Replyinfo() {
	}

	public Replyinfo(String usermail, String username, int postid, String replycontent) {
		this.usermail = usermail;
		this.username = username;
		this.postid = postid;
		this.replycontent = replycontent;
	}

	public String getUsermail() {
		return this.usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getPostid() {
		return this.postid;
	}

	public void setPostid(int postid) {
		this.postid = postid;
	}

	public String getReplycontent() {
		return this.replycontent;
	}

	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}
}