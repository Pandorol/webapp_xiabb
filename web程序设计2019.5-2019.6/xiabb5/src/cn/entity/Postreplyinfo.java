package cn.entity;

import java.sql.Timestamp;

public class Postreplyinfo {
	private String username;
	private String replycontent;
	private Timestamp replydate;

	public Postreplyinfo() {
	}

	public Postreplyinfo(String username, String replycontent, Timestamp replydate) {
		this.username = username;
		this.replycontent = replycontent;
		this.replydate = replydate;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getReplycontent() {
		return this.replycontent;
	}

	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}

	public Timestamp getReplydate() {
		return this.replydate;
	}

	public void setReplydate(Timestamp timestamp) {
		this.replydate = timestamp;
	}
}