package cn.entity;

public class Recommendpostinfo {
	private int repostid;
	private String reposttitle;
	private String repostcontent;
	public int getRepostid() {
		return this.repostid;
	}

	public void setRepostid(int repostid) {
		this.repostid = repostid;
	}

	public String getReposttitle() {
		return this.reposttitle;
	}

	public void setReposttitle(String reposttitle) {
		this.reposttitle = reposttitle;
	}

	public String getRepostcontent() {
		return repostcontent;
	}

	public void setRepostcontent(String repostcontent) {
		this.repostcontent = repostcontent;
	}
}